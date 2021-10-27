import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_app/screen/bottom/bottom_next_screen.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomScreen extends StatelessWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const BottomNextScreen(),
                            ),
                          );
                        },
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
