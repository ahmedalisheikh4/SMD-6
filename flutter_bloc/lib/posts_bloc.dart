import 'package:flutter_bloc/flutter_bloc.dart';
import 'posts_event.dart';
import 'posts_state.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<PostsFetched>(_onPostsFetched);
  }

  Future<void> _onPostsFetched(
    PostsFetched event,
    Emitter<PostsState> emit,
  ) async {
    emit(PostsLoading());
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );
      if (response.statusCode == 200) {
        final List posts = json.decode(response.body);
        emit(PostsLoaded(posts));
      } else {
        emit(PostsError());
      }
    } catch (_) {
      emit(PostsError());
    }
  }
}
