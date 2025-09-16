import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sportify/utils/fonts/fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: Colors.indigoAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 40,
          bottom: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image and text row
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 18,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                          "https://docs.flutter.dev/assets/images/flutter-logo-sharing.png",
                        ),
                      ),
                    ),
                    SizedBox(width: 13),
                    Text(
                      "Hello, Siva",
                      style: montserrat(18, FontWeight.w500, Colors.white),
                    ),
                  ],
                ),

                // Search and Notification icon
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(EvaIcons.search, color: Colors.white),
                    ),

                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(EvaIcons.bellOutline, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),

            // Text title
            Text(
              "Book the best\nsports facilities in town.",
              style: montserrat(24, FontWeight.w700, Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
