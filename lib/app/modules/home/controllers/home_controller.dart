import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm_card/app/modules/home/models/AuthUserModel.dart';
import 'package:mm_card/app/modules/home/views/entry_from_screen_view.dart';
import 'package:mm_card/app/modules/home/views/payment_status_view.dart';
import 'package:mm_card/app/modules/home/views/profile_view.dart';
import 'package:mm_card/utils/constant.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class HomeController extends GetxController {
  final authUser = AuthUserModel().obs;

  final Dio _dio = Dio();
  final isLoading = false.obs;
  final token = ''.obs;
  @override
  void onInit() {
    // initialize();
    super.onInit();
  }

//Login Logic
  late StreamingSharedPreferences preferences;

  Future<void> login(String email, String password) async {
    try {
      isLoading.value = true;

      final response = await _dio.post(
        kLoginUrl,
        data: {
          'email': email,
          'password': password,
        },
      );
      print('hello');
      if (response.statusCode == 200) {
        var json = response.data;
        print(json);
        authUser.value = AuthUserModel.fromJson(json);
        print(authUser.value.user!.name);
        getUsersByReferredCode();
        findForm();
        Get.snackbar(
          'Login Successfully',
          'Welcome to this application',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
        );
      } else {
        // Login failed, display error message
        Get.snackbar(
          'Error',
          'Invalid email or password',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      // Error occurred, display error message
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      Future.delayed(const Duration(seconds: 3), () {
        isLoading.value = false;
      });
    }
  }

  //Login logic end
//Register Logic start
  Future<void> register(String name, String email, String password,
      String phone, String referredCode) async {
    try {
      isLoading.value = true;
      final response = await _dio.post(
        kRegister,
        data: {
          'name': name,
          'email': email,
          'password': password,
          'phone': phone,
          'reffered_code': referredCode,
        },
      );
      if (response.statusCode == 201) {
        isLoading.value = false;
        Get.to(EntryFromScreenView());
        var json = response.data;
        authUser.value = AuthUserModel.fromJson(json);
        Get.snackbar(
          'Register Successfully',
          'You have successfully registered',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
        );
        print(authUser.value.user!.name);
        // Registration success, navigate to home screen or do other things
        // Get.toNamed('/home');
      } else {
        // Registration failed, display error message
        Get.snackbar(
          'Error',
          response.data['message'] ?? 'Registration failed',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      // Error occurred, display error message
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

//Register Logic end
//Submit Form
  Future<void> submitPayment(String paymentMethodName, String recipientNumber,
      String transactionId, String amount) async {
    try {
      isLoading.value = true;

      final headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

      final data = {
        'pay_method': paymentMethodName,
        'sender_number': recipientNumber,
        'txn_id': transactionId,
        'amonut': amount,
      };

      String url = kFormSubmit(int.parse(authUser.value.user!.id.toString()));

      final response = await _dio.post(
        url,
        data: data,
        options: Options(headers: headers),
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        isLoading.value = false;
        Get.off(const PaymentStatusView());
        // Payment success, do other things

        Get.snackbar(
          'Success',
          'Your form submitted successfully',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
        );
      }
    } catch (e) {
      isLoading.value = false;
      // Error occurred, display error message
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  //Submit form end
  // to get reffered users
  var userList = List<User>.empty().obs;

  Future<void> getUsersByReferredCode() async {
    try {
      final response = await _dio.get(
        kUsersByReferredCode(
          authUser.value.user!.referralCode.toString(),
        ),
      );
      if (response.statusCode == 200) {
        final List<dynamic> responseData = response.data['users'];
        final List<User> loadedUsers = [];
        for (var userData in responseData) {
          final User user = User.fromJson(userData);
          loadedUsers.add(user);
        }
        userList.value = loadedUsers;
      }
      isLoading.value = false;
    } catch (error) {
      print(error);
    }
  }

  //find form
  Future<void> findForm() async {
    String url = kUserForms(int.parse(authUser.value.user!.id.toString()));
    try {
      Dio dio = Dio();
      dio.options.headers["Authorization"] = "Bearer your_access_token_here";
      dio.options.headers["Content-Type"] = "application/json";
      final response = await dio.get(url);
      if (response.statusCode == 200 && response.data['forms'] != null) {
        print(response.data['forms']['status']);
        if (response.data['forms']['status'] == 'accepted') {
          Get.to(ProfileView());
        } else if (response.data['forms']['status'] == 'Pending') {
          Get.to(const PaymentStatusView());
        } else {
          Get.to(EntryFromScreenView());
        }
      } else {
        Get.to(EntryFromScreenView());
      }
    } catch (e) {
      print(e);
    }
  }

//Unessary function

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
