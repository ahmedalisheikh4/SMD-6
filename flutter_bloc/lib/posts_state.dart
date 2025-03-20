abstract class PostsState {}

class PostsInitial extends PostsState {}

class PostsLoading extends PostsState {}

class PostsLoaded extends PostsState {
  final List posts;
  PostsLoaded(this.posts);
}

class PostsError extends PostsState {}
