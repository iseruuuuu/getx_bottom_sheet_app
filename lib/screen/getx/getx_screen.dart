import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:get/get.dart';

import 'getx_screen_controller.dart';

class GetXScreen extends StatelessWidget {
  const GetXScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GetXScreenController());
    return Material(
      child: Navigator(
        onGenerateRoute: (_) => MaterialPageRoute(
          builder: (context) => Builder(
            builder: (context) => CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                leading: Container(),
                middle: const Text('Modal Page'),
              ),
              child: SafeArea(
                bottom: false,
                child: ListView(
                  shrinkWrap: true,
                  controller: ModalScrollController.of(context),
                  children: ListTile.divideTiles(
                    context: context,
                    tiles: List.generate(
                      100,
                      (index) => ListTile(
                        title: const Text('Item'),
                        onTap: controller.onTap,
                      ),
                    ),
                  ).toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
