class WallPaper {
  int id;
  String pageUrl;
  String tags;
  String previewUrl;
  String webformatUrl;
  String largeImageUrl;
  int imageWidth;
  int imageHeight;
  int imageSize;
  int views;
  int downloads;
  int collections;
  int likes;
  int comments;
  int userId;
  String user;
  String userImageUrl;

  WallPaper({
    required this.id,
    required this.pageUrl,
    required this.tags,
    required this.previewUrl,
    required this.webformatUrl,
    required this.largeImageUrl,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageSize,
    required this.views,
    required this.downloads,
    required this.collections,
    required this.likes,
    required this.comments,
    required this.userId,
    required this.user,
    required this.userImageUrl,
  });

  factory WallPaper.fromMap({required Map<String, dynamic> json}) => WallPaper(
        id: json["id"],
        pageUrl: json["pageURL"],
        tags: json["tags"],
        previewUrl: json["previewURL"],
        webformatUrl: json["webformatURL"],
        largeImageUrl: json["largeImageURL"],
        imageWidth: json["imageWidth"],
        imageHeight: json["imageHeight"],
        imageSize: json["imageSize"],
        views: json["views"],
        downloads: json["downloads"],
        collections: json["collections"],
        likes: json["likes"],
        comments: json["comments"],
        userId: json["user_id"],
        user: json["user"],
        userImageUrl: json["userImageURL"],
      );
}
