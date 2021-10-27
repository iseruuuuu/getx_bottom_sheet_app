import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screen/getx/getx_screen.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class GetXNextScreenController extends GetxController {

  onTap() {
    showCupertinoModalBottomSheet(
      expand: true,
      context: Get.overlayContext!,
      backgroundColor: Colors.transparent,
      builder: (context) => const GetXScreen(),
    );
  }
}