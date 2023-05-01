import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/modules/home/views/drawer_header_view.dart';
import '../app/modules/home/views/entry_from_screen_view.dart';

var kDrawer = Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      Column(
        children: [
          const DrawerHeaderView(),
          NavItem(),
        ],
      ),
    ],
  ),
);

var kActionLogout = [
  IconButton(
    onPressed: () {
      Get.back();
    },
    icon: const Icon(Icons.logout),
  )
];
var kElevatedButton = ElevatedButton.styleFrom(
  minimumSize: const Size(200, 50),
  maximumSize: const Size(200, 50),
);
