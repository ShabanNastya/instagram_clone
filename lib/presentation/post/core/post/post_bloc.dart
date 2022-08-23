import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/domain/models/post.dart';
import 'package:instagram_clone/domain/repository/post_repository.dart';

part 'post_bloc.freezed.dart';

part 'post_event.dart';

part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository _postRepository;

  PostBloc(this._postRepository) : super(PostState()) {
    on<PostReadEvent>((event, emit) {
      emit(event.post == null
          ? state.copyWith(postStatus: PostStatus.loading)
          : state.copyWith(postStatus: PostStatus.loaded));
      _postRepository.read();
    });

    on<PostAddEvent>((event, emit) {
      emit(state.copyWith(postStatus: PostStatus.loading));
      _postRepository.write(event.post);
      emit(state.copyWith(postStatus: PostStatus.loaded, post: event.post));
    });

    // on<PostDeleteEvent>((event, emit) {});
    // on<PostUpdateEvent>((event, emit) {});
  }

  addPost(Post post) {
    add(PostAddEvent(post));
  }
}
