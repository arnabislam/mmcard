import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:mm_card/app/modules/home/controllers/home_controller.dart';
import 'package:mm_card/app/modules/home/views/home_view.dart';

class SplashviewView extends GetView {
  const SplashviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      HomeController homeController = Get.put(HomeController());
      Get.offAll(HomeView());
    });
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              'NN Club',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          SpinKitCubeGrid(
            color: Colors.white,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
