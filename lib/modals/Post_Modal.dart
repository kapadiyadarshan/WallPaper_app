class PostModal {
  int id, userId;
  String title, body;

  PostModal(this.id, this.userId, this.title, this.body);

  factory PostModal.fromMap({required Map data}) {
    return PostModal(
      data['id'],
      data['userId'],
      data['title'],
      data['body'],
    );
  }
}
