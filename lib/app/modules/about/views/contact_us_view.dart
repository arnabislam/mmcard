import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsView extends GetView {
  const ContactUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contact Us'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 16.0),
            Text(
              'About Us',
              style: GoogleFonts.openSans(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut semper lorem. Nullam euismod odio a ipsum consequat, at pulvinar lorem placerat. Donec convallis nunc eget arcu interdum, et euismod elit vestibulum. In et diam vel diam blandit malesuada. Cras eget dolor a metus lacinia maximus. Sed vel nunc vel risus mollis blandit.',
              style: GoogleFonts.openSans(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Our Mission',
              style: GoogleFonts.openSans(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut semper lorem. Nullam euismod odio a ipsum consequat, at pulvinar lorem placerat. Donec convallis nunc eget arcu interdum, et euismod elit vestibulum. In et diam vel diam blandit malesuada. Cras eget dolor a metus lacinia maximus. Sed vel nunc vel risus mollis blandit.',
              style: GoogleFonts.openSans(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our Team',
              style: GoogleFonts.openSans(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut semper lorem. Nullam euismod odio a ipsum consequat, at pulvinar lorem placerat. Donec convallis nunc eget arcu interdum, et euismod elit vestibulum. In et diam vel diam blandit malesuada. Cras eget dolor a metus lacinia maximus. Sed vel nunc vel risus mollis blandit.',
              style: GoogleFonts.openSans(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
