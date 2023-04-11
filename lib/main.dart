import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage()
      },
    );
  }
}
