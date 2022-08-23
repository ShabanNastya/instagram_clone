import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/domain/models/post.dart';
import 'package:instagram_clone/domain/repository/post_repository.dart';

class FirebasePostRepository extends PostRepository {
  final FirebaseFirestore _firebaseFirestore;

  FirebasePostRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Post>> read() {
    return _firebaseFirestore.collection("posts").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Post.fromSnapshot(doc)).toList();
    });
  }

  @override
  Future<void> write(Post post) async {
    _firebaseFirestore.collection("posts").add(post.toMap());
  }
}
