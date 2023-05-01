import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:mm_card/app/modules/home/views/register_screen_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Obx(
      () => LoadingOverlay(
        isLoading: homeController.isLoading.value,
        opacity: 0.5,
        color: Colors.deepPurpleAccent,
        progressIndicator: const SpinKitWave(
          size: 50,
          color: Colors.deepPurpleAccent,
        ),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.png'), fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height / 18,
                      top: MediaQuery.of(context).size.height / 8),
                  child: const Text(
                    'Welcome\nBack',
                    style: TextStyle(color: Colors.white, fontSize: 33),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height / 24,
                              right: 35),
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: phone,
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    hintText: "Enter Your Email",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        26),
                                TextFormField(
                                  controller: password,
                                  style: const TextStyle(),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    hintText: "Password",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(200, 50),
                                        maximumSize: const Size(200, 50),
                                      ),
                                      onPressed: () {
                                        homeController.login(
                                            phone.text, password.text);
                                      },
                                      child: Center(
                                        child: GestureDetector(
                                          child: const Text(
                                            'Sign In',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 27,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Don\'t Hava an Account?'),
                                    TextButton(
                                      onPressed: () {
                                        Get.to(RegisterScreenView());
                                      },
                                      style: const ButtonStyle(),
                                      child: const Text(
                                        'Sign Up',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Color(0xff4c505b),
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
