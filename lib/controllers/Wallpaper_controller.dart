import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_app/helpers/Api_Helper.dart';

import '../modals/Wallpaper_Modal.dart';

class WallpaperController extends ChangeNotifier {
  List<WallPaper> allWallpaper = [];
  List<WallPaper> likeWallpaper = [];
  int index = 0;

  WallpaperController() {
    getAllWallpapers();
  }

  Future<List<WallPaper>?> getAllWallpapers(
      {String query = "", String category = "all"}) async {
    allWallpaper = await ApiHelper.apiHelper
        .getWallpaperData(query: query, category: category);
    notifyListeners();
    return allWallpaper;
  }

  addLikeWallpaper({required WallPaper wallPaper}) {
    if (!likeWallpaper.contains(wallPaper)) {
      likeWallpaper.add(wallPaper);
    }
    notifyListeners();
  }

  removeLikeWallpaper({required WallPaper wallPaper}) {
    likeWallpaper.remove(wallPaper);
    notifyListeners();
  }

  changeNavigationBarIndex({required int index}) {
    this.index = index;
    notifyListeners();
  }

  setWallpaper({required String url, required int location}) {
    AsyncWallpaper.setWallpaper(
      url: url,
      wallpaperLocation: location,
      goToHome: true,
      toastDetails: ToastDetails.success(),
      errorToastDetails: ToastDetails.error(),
    );
  }
}
