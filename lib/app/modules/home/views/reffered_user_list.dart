import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm_card/app/modules/home/controllers/home_controller.dart';

import '../../../../utils/constant_widgets.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        actions: kActionLogout,
        centerTitle: true,
        title: const Text('Your Referred List'),
      ),
      body: ListView.builder(
        itemCount: homeController.userList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.network(
                      'https://w7.pngwing.com/pngs/481/915/png-transparent-computer-icons-user-avatar-woman-avatar-computer-business-conversation-thumbnail.png'),
                ),
                title: Text(
                  homeController.userList[index].name.toString(),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(homeController.userList[index].phone.toString()),
                trailing: Text(
                    'Refer Code: ${homeController.userList[index].referralCode}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
