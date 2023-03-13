import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../translations/controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
        actions: [
          GetBuilder<AppLanguage>(
            builder: (controller) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "EN",
                  ),
                  Switch(
                    activeColor: Colors.amber,
                    value: controller.appLocale.languageCode == "ar",
                    onChanged: (value) {
                      if (value) {
                        controller.changeLanguage("ar");
                      } else {
                        controller.changeLanguage("en");
                      }
                    },
                  ),
                  const Text(
                    "AR",
                  ),
                ],
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "name".tr,
          textScaleFactor: 3,
        ),
      ),
    );
  }
}
