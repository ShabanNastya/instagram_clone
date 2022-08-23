import 'package:instagram_clone/domain/models/post.dart';

abstract class PostRepository {
  Stream<List<Post>> read();

  Future<void> write(Post post);
}
