import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RefferenceView extends GetView {
  const RefferenceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RefferenceView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RefferenceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
