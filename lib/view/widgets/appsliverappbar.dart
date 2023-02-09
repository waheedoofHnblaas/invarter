import 'package:flutter/material.dart';

class AppSliverAppBar extends StatelessWidget {

  const AppSliverAppBar({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      pinned: true,
      foregroundColor: Colors.black,
      centerTitle: true,
      title: Text(title),
    );
  }
}
