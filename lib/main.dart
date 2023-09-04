import 'package:flutter/material.dart';
import 'screens/majorscreens/landing.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foody',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 219, 35, 35)),
        useMaterial3: true,
      ),
      home:  SplashScreen(
        seconds: 5,
          navigateAfterSeconds: landing(),
          image: new Image.asset('assets/images/landing.png'),
          photoSize: 100.0,
          backgroundColor: Colors.blue,
          styleTextUnderTheLoader: new TextStyle(),
          loaderColor: Colors.white),
       debugShowCheckedModeBanner: false,
    );
  }
}
