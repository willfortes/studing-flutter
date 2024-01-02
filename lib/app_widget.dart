import 'package:flutter/material.dart';
import 'package:hello/app_controller.dart';
import 'package:hello/home_page.dart';
import 'package:hello/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            appBarTheme: AppBarTheme(
              color: Colors.red,
            ),
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.red,
              brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light
            ),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage()
          },
        );
      },
      animation: AppController.instance, 
    );
  }
}