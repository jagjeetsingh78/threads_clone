import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/route_manager.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:threads_project/routes/route.dart';
import './routes/route_name.dart';
import './themes/theme.dart';
import './views/home.dart';
import'./utils/env.dart';
import 'dart:developer' as developer;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  // If you want to initialize Supabase, uncomment and use the following lines:
  // final supabaseUrl = dotenv.env['SUPABASE_URL'];
  // final supabaseKey = dotenv.env['SUPABASE_KEY'];
  
  await Supabase.initialize(url: Env.supabaseUrl, anonKey:Env.supabasekey);
  developer.log(Env.supabaseUrl);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routes.pages,
      initialRoute: RouteName.Login,
      title: 'Glorify',
      theme: theme,
    );
  }
}

