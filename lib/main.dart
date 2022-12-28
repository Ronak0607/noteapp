
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteapp/Screen/View/HomeScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      routes: ({
        '/':(context) => HomeScreen(),
      }),
    )
  );
}