import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:mm_card/app/modules/about/views/about_view.dart';
import 'package:mm_card/app/modules/about/views/contact_us_view.dart';
import 'package:mm_card/app/modules/home/controllers/home_controller.dart';
import 'package:mm_card/app/modules/home/views/home_view.dart';
import 'package:mm_card/utils/constant_widgets.dart';

class EntryFromScreenView extends GetView {
  TextEditingController paymentMethod = TextEditingController();
  TextEditingController senderNumber = TextEditingController();
  TextEditingController txnId = TextEditingController();
  TextEditingController amount = TextEditingController();

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return LoadingOverlay(
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
                image: AssetImage('assets/register.png'), fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              actions: kActionLogout,
              centerTitle: true,
              title: const Text('Sent your Payment'),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            drawer: kDrawer,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height / 24,
                    top: MediaQuery.of(context).size.height / 30,
                  ),
                  child: const Text(
                    'bKash,Nagad,Rocket\n01640906324\n01858667378\n01972078982',
                    style: TextStyle(color: Colors.white, fontSize: 33),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.height / 28,
                            right: MediaQuery.of(context).size.height / 21,
                          ),
                          child: Column(
                            children: [
                              TextField(
                                controller: paymentMethod,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: "Payment Method",
                                    hintStyle:
                                        const TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 32,
                              ),
                              TextField(
                                controller: senderNumber,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: "Sender Number",
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 32,
                              ),
                              TextField(
                                controller: txnId,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: "Txn Id",
                                    hintStyle:
                                        const TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 32,
                              ),
                              TextField(
                                controller: amount,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: "Transactional Amount",
                                    hintStyle:
                                        const TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 34,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: kElevatedButton,
                                    onPressed: () {
                                      homeController.submitPayment(
                                          paymentMethod.text.trim(),
                                          senderNumber.text,
                                          txnId.text,
                                          amount.text);
                                    },
                                    child: const Center(
                                      child: Text(
                                        'Submit',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 27,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
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
      );
    });
  }
}

NavItem() {
  return Material(
    child: Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.table_chart_sharp,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(const AboutView());
                    },
                    child: const Text(
                      "About",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Get.to(const ContactUsView());
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.contact_page,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Contact Us",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.privacy_tip_sharp,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.note_add_sharp,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "Terms & Condition",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Get.offAll(HomeView());
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.logout_outlined,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Get.defaultDialog(
                titleStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                title: "Are you sure you \n want to exit",
                content: Container(
                  margin: EdgeInsets.only(left: 45, top: 15),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          )),
                      const SizedBox(
                        width: 25,
                      ),
                      TextButton(
                          onPressed: () {
                            closeAppUsingExit();
                          },
                          child: const Text('Ok',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)))
                    ],
                  ),
                ));
            //closeAppUsingExit();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.exit_to_app,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "Exit App",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

void closeAppUsingExit() {
  exit(0);
}
