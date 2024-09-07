import 'package:flutter/material.dart';
import 'package:schoobeeapp/pages/home_page.dart';
import 'package:schoobeeapp/pages/sign_in_screen.dart';
import 'package:schoobeeapp/widgets/card_widget.dart';
import 'package:schoobeeapp/widgets/drawer.dart';
import 'package:schoobeeapp/widgets/home_page_first_part.dart';
import 'package:schoobeeapp/widgets/myappbar.dart';
import 'package:schoobeeapp/widgets/myflexibleapp.dart';

import 'models/cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.white,
          elevation: 10.0,
        ),
      ),
      home: const MainPage(),
    );
  }
}


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SignInScreen(),

    );
  }
}


