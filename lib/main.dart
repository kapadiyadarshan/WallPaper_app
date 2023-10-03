import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controllers/Wallpaper_controller.dart';
import 'package:wallpaper_app/utils/routes_utils.dart';
import 'package:wallpaper_app/views/screens/detail_page.dart';
import 'package:wallpaper_app/views/screens/home_page.dart';
import 'package:wallpaper_app/views/screens/search_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WallpaperController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoute.HomePage,
      routes: {
        MyRoute.HomePage: (context) => HomePage(),
        MyRoute.DetailPage: (context) => const DetailPage(),
        MyRoute.SearchPage: (context) => const SearchPage(),
      },
    );
  }
}
