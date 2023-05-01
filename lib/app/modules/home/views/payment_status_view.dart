import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm_card/app/modules/home/views/home_view.dart';
import 'package:mm_card/utils/constant_widgets.dart';

class PaymentStatusView extends GetView {
  const PaymentStatusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: kDrawer,
      appBar: AppBar(
        actions: kActionLogout,
        centerTitle: true,
        title: const Text('Payment Status'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Card(
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Payment Status Is Pending.!',
                  style: TextStyle(fontSize: 24.0, color: Colors.red),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              style: kElevatedButton,
              onPressed: () {
                Get.to(HomeView());
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
