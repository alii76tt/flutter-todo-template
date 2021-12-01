import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/init/binding/main_bindings.dart';
import 'core/init/navigation/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      initialBinding: MainBindings(),
      unknownRoute: Routes.unknownRoute,
      getPages: Routes.getPages,
      initialRoute: Routes.initialRoute,
    );
  }
}
