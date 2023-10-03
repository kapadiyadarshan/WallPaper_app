import 'package:flutter/material.dart';
import 'package:wallpaper_app/helpers/Api_Helper.dart';

import '../modals/Wallpaper_Modal.dart';

class WallpaperController extends ChangeNotifier {
  List<WallPaper> allWallpaper = [];
  int index = 0;

  WallpaperController() {
    getAllWallpapers();
  }

  Future<List<WallPaper>?> getAllWallpapers({String query = ""}) async {
    allWallpaper = await ApiHelper.apiHelper.getWallpaperData(query: query);
    notifyListeners();
    return allWallpaper;
  }

  changeNavigationBarIndex({required int index}) {
    this.index = index;
    notifyListeners();
  }
}
