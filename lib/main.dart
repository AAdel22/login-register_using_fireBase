import 'package:e_commerce_app/Views/Auth_screens/login_screen.dart';
import 'package:e_commerce_app/Views/Auth_screens/register_screen.dart';
import 'package:e_commerce_app/Views/Control_View.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Helper/binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ControlView(),
      ),
    );
  }
}
