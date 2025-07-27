import 'package:get/route_manager.dart';
import 'package:threads_project/views/auth/register.dart';
import 'package:threads_project/views/home.dart';
import 'route_name.dart';
import '../views/auth/login.dart';

class Routes{
  static final pages = [
     GetPage(name: RouteName.home, page: () => Home()),
     GetPage(name: RouteName.Login, page: () => Loginpage()),
     GetPage(name: RouteName.Register, page: () => Register()),
  
     
  ];

}