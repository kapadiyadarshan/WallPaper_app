import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wallpaper_app/modals/Post_Modal.dart';
import 'package:wallpaper_app/modals/Wallpaper_Modal.dart';

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();
  String api = 'https://jsonplaceholder.typicode.com/posts';
  String wallpaperAPI =
      "https://pixabay.com/api/?key=39791951-c36a6efe05b11256d1e376f13&orientation=vertical";

  getWallpaperData({required String query}) async {
    http.Response response =
        await http.get(Uri.parse("$wallpaperAPI&q=$query"));

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allData = data["hits"];

      List<WallPaper> allWallpapersData = allData
          .map((e) => WallPaper.fromMap(
                json: e,
              ))
          .toList();

      return allWallpapersData;
    } else {
      return null;
    }
  }

  Future<PostModal?> getStringData({required int id}) async {
    http.Response response = await http.get(Uri.parse('$api/$id'));

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);

      PostModal post = PostModal.fromMap(data: data);
      return post;
    } else {
      return null;
    }
  }

  Future<List<PostModal>?> getStringAllData() async {
    http.Response response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);

      List<PostModal> post = data.map((e) {
        return PostModal.fromMap(
          data: e,
        );
      }).toList();
      return post;
    } else {
      return null;
    }
  }
}
