import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controllers/Wallpaper_controller.dart';
import 'package:wallpaper_app/helpers/Api_Helper.dart';
import 'package:wallpaper_app/modals/Wallpaper_Modal.dart';
import 'package:wallpaper_app/utils/colors_utils.dart';
import 'package:wallpaper_app/utils/routes_utils.dart';
import 'package:wallpaper_app/views/components/collections.dart';
import 'package:wallpaper_app/views/components/community.dart';
import 'package:wallpaper_app/views/components/favorites.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Widget> WidgetList = [
    Community(),
    Collections(),
    Favorites(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Wall",
                style: TextStyle(
                  color: MyColor.theme2,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "Papers",
                style: TextStyle(
                  color: MyColor.theme1,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoute.SearchPage);
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white70,
            ),
          )
        ],
        backgroundColor: MyColor.bgColor,
      ),
      body: WidgetList[Provider.of<WallpaperController>(context).index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColor.bgColor,
        selectedItemColor: MyColor.theme2,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        onTap: (value) {
          Provider.of<WallpaperController>(context, listen: false)
              .changeNavigationBarIndex(index: value);
        },
        currentIndex: Provider.of<WallpaperController>(context).index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit,
            ),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.collections,
            ),
            label: "Collections",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: "Favorites",
          ),
        ],
      ),
      backgroundColor: MyColor.bgColor,
    );
  }
}
