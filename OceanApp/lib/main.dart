import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/apresentation.dart';
import 'package:flutter_application_1/views/autenticacao.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_application_1/views/info.dart';
import 'package:flutter_application_1/views/result.dart';
import 'package:flutter_application_1/views/search.dart';

import 'views/splash_page.dart';

void main() => runApp(MyApp());

//
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/': (context) => HomeScreen(),
        '/login': (context) => SignInPage(),
        '/search': (context) => SearchScreen(),
        '/result': (BuildContext context) =>
            ResultScreen(ocean: ModalRoute.of(context).settings.arguments),
      },
    );
  }
}
