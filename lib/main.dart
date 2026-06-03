import 'package:flutter/material.dart';
import 'package:myapp/pages/Lgin.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:myapp/utils/routes.dart';


void main() {
 

  runApp(
    MaterialApp(
      //home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primaryColor: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      //initialRoute: '/',
      routes: {
        '/':(context) => Loginpage(),
        MyRoutes.loginRoute:(context)  => Loginpage(),
        MyRoutes.loginn:(context) => const Loginn(),
      },
    ),
  );
}