import 'package:flutter/material.dart';
import 'package:sportify/home_feed/widgets/game_card.dart';
import 'package:sportify/utils/data/nearby_sports.dart';
import 'package:sportify/utils/fonts/fonts.dart';

class JoinGameScroller extends StatelessWidget {
  const JoinGameScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 50,
            right: 20,
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Join a game nearby",
                style: montserrat(16, FontWeight.w700, Colors.black),
              ),
              Text(
                "View all",
                style: montserrat(15, FontWeight.w600, Colors.indigoAccent),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: nearbysports
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GameCard(elem: e,),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
