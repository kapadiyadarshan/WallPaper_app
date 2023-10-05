import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controllers/Wallpaper_controller.dart';
import 'package:wallpaper_app/utils/colors_utils.dart';

class Collections extends StatelessWidget {
  const Collections({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WallpaperController>(builder: (context, provider, _) {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Pro Collections
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Pro",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MyColor.theme1,
                    ),
                  ),
                  const TextSpan(
                    text: " Collections",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      provider.getAllWallpapers(
                        category: "nature",
                        query: "nature",
                      );
                      provider.changeNavigationBarIndex(index: 0);
                    },
                    child: Container(
                      height: 180,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://pixabay.com/get/geae94f4bfa9edffaab33e4e6b32859f7d6fe9d4df528fd20e7f75ba41ab0402b45e076d6f4b02cf5e6786ff0e2d407baad204b13e638b528cd1a1ea33e98cd3d_1280.jpg",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Nature",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Pro Collection",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyColor.theme1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      provider.getAllWallpapers(
                        category: "science",
                        query: "science",
                      );
                      provider.changeNavigationBarIndex(index: 0);
                    },
                    child: Container(
                      height: 180,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://pixabay.com/get/g71a97a4b3bd4e39cc3a6106f4fa449ecb6a8a9e38220130f6f9ba5f8c9eebda24086cc41619218a8462539da0bf3c207ded48310d774a18c5631a980e796c1a0_1280.jpg",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Science",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Pro Collection",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyColor.theme1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),

            //Free Collections
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Free",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MyColor.theme2,
                    ),
                  ),
                  const TextSpan(
                    text: " Collections",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      provider.getAllWallpapers(
                        category: "animals",
                        query: "animal",
                      );
                      provider.changeNavigationBarIndex(index: 0);
                    },
                    child: Container(
                      height: 180,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            "https://pixabay.com/get/g5858909d1b0c8debb974329107c4351325ca9044c6db43ad6ea15134a0098e7e95503d7ff6892db8872be02523be713992063c964f8e187f6b03ee572065bedd_1280.jpg",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Animal",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Free Collection",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyColor.theme1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      provider.getAllWallpapers(
                        category: "food",
                        query: "food",
                      );
                      provider.changeNavigationBarIndex(index: 0);
                    },
                    child: Container(
                      height: 180,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://pixabay.com/get/gde7f06a087d0822d47c0f0f61c6fee432e298afde2f1e748b00a902836bd755592ae8d72b30dd661642581dcbe3615b5b04998e378b9b9a0a491d3b55b207624_1280.jpg",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Food",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Free Collection",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyColor.theme1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      provider.getAllWallpapers(
                        category: "sports",
                        query: "sports",
                      );
                      provider.changeNavigationBarIndex(index: 0);
                    },
                    child: Container(
                      height: 180,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://pixabay.com/get/ge80c887edf12e9a18ec9b3ee839ddcb5ebee27fb820afbeedc095ce93d53b994ee2914ff5a9ded0d590b33430e48ed20953f5e31eb8d82140b9447e7f1403ee7_1280.jpg",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Sport",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Free Collection",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyColor.theme1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),

            //Premium Collections
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Premium",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MyColor.theme1,
                    ),
                  ),
                  const TextSpan(
                    text: " Collections",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      provider.getAllWallpapers(
                        category: "business",
                        query: "business",
                      );
                      provider.changeNavigationBarIndex(index: 0);
                    },
                    child: Container(
                      height: 180,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            "https://pixabay.com/get/gb781ceeaea37ae60ca778e5fa0407ed3e3d75030162a44e22a11beaf55a00a164cfcf23ad87df9b3edca7535cdbd9bd6f13d3babd0c498b96fa333436f3fbfc5_1280.jpg",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Business",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Premium Collection",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyColor.theme1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      provider.getAllWallpapers(
                        category: "industry",
                        query: "industry",
                      );
                      provider.changeNavigationBarIndex(index: 0);
                    },
                    child: Container(
                      height: 180,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://pixabay.com/get/gb9b6a1d234997ac98c3385747593c4f5253a2d70951874be154e88caf566acc5befda19d6504918def05984c26c431f6faecb1968eee727b417ca910b93cee79_1280.jpg",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Industry",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Premium Collection",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyColor.theme1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      provider.getAllWallpapers(
                        category: "computer",
                        query: "computer",
                      );
                      provider.changeNavigationBarIndex(index: 0);
                    },
                    child: Container(
                      height: 180,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://pixabay.com/get/g278a5a7bcc5dcb4fb57a5fba0dfd690ad970b4d41d8db54d3f6b92c5518bb95498d16c9ef712eb2f2dce79615ca92ca3dfcff9126dd639f2f45f6844faff4ff9_1280.jpg",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Computer",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Premium Collection",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyColor.theme1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      );
    });
  }
}
