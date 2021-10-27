import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screen/getx/getx_next_screen.dart';
import 'package:getx_app/screen/getx/getx_screen.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class GetXScreenController extends GetxController {
  onTap() {
    Navigator.of(Get.overlayContext!).push(
      MaterialPageRoute(
        builder: (context) => const GetXNextScreen(),
      ),
    );
  }
}
