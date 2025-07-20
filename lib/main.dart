import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:threads_project/routes/route.dart';
import './views/home.dart';
import './themes/theme.dart';
import './routes/route_name.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages:Routes.pages ,
      initialRoute:RouteName.Login,
      title: 'Glorify',
      theme:theme,
      


    );
  }
}

