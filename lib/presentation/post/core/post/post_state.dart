part of 'post_bloc.dart';

enum PostStatus {
  initial,
  loading,
  loaded,
}

@freezed
class PostState with _$PostState {
  factory PostState(
      {@Default(PostStatus.initial) PostStatus postStatus,
      Post? post}) = _PostState;

  factory PostState.initial() => PostState(postStatus: PostStatus.initial);

  factory PostState.loading() => PostState(postStatus: PostStatus.loading);

  factory PostState.loaded(Post post) =>
      PostState(postStatus: PostStatus.loaded);
}
