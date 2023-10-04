import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controllers/Wallpaper_controller.dart';
import 'package:wallpaper_app/utils/colors_utils.dart';

import '../../modals/Wallpaper_Modal.dart';
import '../../utils/routes_utils.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WallpaperController>(builder: (context, provider, _) {
      return provider.likeWallpaper.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white24,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.favorite,
                      size: 72,
                      color: MyColor.bgColor,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "You don't have any favorites yet.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MyColor.theme1,
                    ),
                  ),
                  const Text(
                    "Click some hearts.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 320,
                ),
                itemCount: provider.likeWallpaper.length,
                itemBuilder: (context, index) {
                  WallPaper wallPaper = provider.likeWallpaper[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoute.DetailPage,
                          arguments: index);
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 260,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(wallPaper.largeImageUrl),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          padding: const EdgeInsets.only(
                            top: 4,
                            bottom: 4,
                            left: 12,
                            right: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.primaries[index % 18].shade600,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 130,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      wallPaper.user,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    Text(
                                      wallPaper.userId.toString(),
                                      style: const TextStyle(
                                        color: Colors.white70,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  (provider.likeWallpaper.contains(wallPaper))
                                      ? provider.removeLikeWallpaper(
                                          wallPaper: wallPaper)
                                      : provider.addLikeWallpaper(
                                          wallPaper: wallPaper);
                                },
                                icon: Icon(
                                  (provider.likeWallpaper.contains(wallPaper))
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                ),
                                color: Colors.white70,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
    });
  }
}
