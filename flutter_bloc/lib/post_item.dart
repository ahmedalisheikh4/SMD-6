import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final Map post;
  const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post['title'] ?? 'No Title'),
      subtitle: Text(post['body'] ?? 'No Content'),
    );
  }
}
