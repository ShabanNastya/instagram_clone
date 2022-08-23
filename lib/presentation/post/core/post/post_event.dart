part of 'post_bloc.dart';

class PostEvent extends Equatable {
  const PostEvent();

  @override
  List<Object?> get props => [];
}

class PostReadEvent extends PostEvent {
  final List<Post> post;

  const PostReadEvent(this.post);

  @override
  List<Object?> get props => [post];
}

// class PostUpdateEvent extends PostEvent {
//   final Post post;
//
//   PostUpdateEvent(this.post);
//
// }
//
// class PostDeleteEvent extends PostEvent {
//   final Post post;
//
//   PostDeleteEvent(this.post);
// }

class PostAddEvent extends PostEvent {
  final Post post;

  PostAddEvent(this.post);
}
