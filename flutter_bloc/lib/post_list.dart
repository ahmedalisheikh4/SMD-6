import 'package:flutter/material.dart';
import 'post_item.dart';

class PostList extends StatelessWidget {
  final List posts;
  const PostList({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostItem(post: posts[index]);
      },
    );
  }
}
