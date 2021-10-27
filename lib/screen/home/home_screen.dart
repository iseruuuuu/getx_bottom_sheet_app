import 'package:flutter/material.dart';
import 'package:getx_app/screen/bottom/bottom_screen.dart';
import 'package:getx_app/screen/home/home_screen_controller.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              child: const Text(
                '普通',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                ),
              ),
              onPressed: () =>
                  showCupertinoModalBottomSheet(
                    expand: true,
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) => const BottomScreen(),
                  ),
            ),
            TextButton(
              onPressed: controller.onTap,
              child: const Text(
                'GetX',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
