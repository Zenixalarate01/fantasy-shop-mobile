import 'package:fantasy_shop_mobile/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:fantasy_shop_mobile/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Fantasy Shop',
        theme: ThemeData(
          fontFamily: 'LowresPixel',
          colorScheme: ColorScheme.light(
            primary: const Color.fromARGB(255, 182, 77, 226),
            secondary: const Color.fromARGB(255, 103, 40, 123),
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
