import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/LoginScreen.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Initialization is required when running Firebase
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Educational Maths App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

