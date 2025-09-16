import 'package:flutter/material.dart';
import 'package:sportify/home_feed/widgets/categories_scroller.dart';
import 'package:sportify/home_feed/widgets/header.dart';
import 'package:sportify/home_feed/widgets/join_game_scroller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [Header(), CategoriesScroller(),JoinGameScroller()]),
      ),
    );
  }
}
