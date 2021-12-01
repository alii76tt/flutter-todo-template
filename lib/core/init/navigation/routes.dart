import 'package:get/get.dart';
import 'package:todo_app/todo/view/add_page.dart';
import 'package:todo_app/todo/view/drawer_page.dart';
import 'package:todo_app/todo/view/home_page.dart';

class Routes {
  static final initialRoute = '/';

  static final unknownRoute = GetPage(name: '/', page: () => HomePage());

  static final getPages = [
    GetPage(name: '/', page: () => HomePage()),
    GetPage(name: '/add', page: () => AddPage()),
    GetPage(name: '/home', page: () => HomePage()),
    GetPage(name: '/drawer', page: () => DrawerPage()),
  ];
}
