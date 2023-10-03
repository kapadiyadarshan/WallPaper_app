import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/Wallpaper_controller.dart';
import '../../modals/Wallpaper_Modal.dart';
import '../../utils/routes_utils.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Consumer<WallpaperController>(builder: (context, pro, _) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            mainAxisExtent: 320,
          ),
          itemCount: pro.allWallpaper.length,
          itemBuilder: (context, index) {
            WallPaper wallPaper = pro.allWallpaper[index];

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
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
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
        );
      }),
    );
  }
}
