import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerHeaderView extends GetView {
  const DrawerHeaderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 3.5,
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height / 50),
            height: MediaQuery.of(context).size.height / 7,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/payment.jpg'),
              radius: 200,
            ),
          ),
          const Text(
            "Payment System",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
