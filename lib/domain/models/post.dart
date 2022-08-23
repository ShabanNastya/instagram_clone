import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String title;
  final String description;
  final String postImage;

  Post(
      {required this.title,
      required this.description,
      required this.postImage});

  static Post fromSnapshot(DocumentSnapshot snap) {
    Post product = Post(
      title: snap['title'],
      description: snap['description'],
      postImage: snap['imageUrl'],
    );

    return product;
  }

  Map<String, dynamic> toMap() => {
        "title": title,
        "description": description,
        "postImage": postImage,
      };
}
