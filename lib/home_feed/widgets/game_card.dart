import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sportify/utils/fonts/fonts.dart';

class GameCard extends StatelessWidget {
  final (IconData, String, String, String, String, String) elem;

  const GameCard({super.key, required this.elem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade400, width: 1.2),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(elem.$3),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(64),
                        color: Colors.white70,
                      ),
                      child: Icon(
                        EvaIcons.heartOutline,
                        color: Colors.black54,
                        size: 23,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 30, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      elem.$4,
                      style: montserrat(16, FontWeight.w600, Colors.black),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          elem.$5,
                          style: montserrat(15, FontWeight.w600, Colors.black),
                        ),

                        Text(
                          elem.$6,
                          style: montserrat(
                            13,
                            FontWeight.w700,
                            Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          Positioned(
            top: 75,
            left: 5,
            child: Container(
              margin: EdgeInsets.all(6),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(size: 16, elem.$1, color: Colors.white),
                  SizedBox(width: 6),
                  Text(
                    elem.$2,
                    style: montserrat(13, FontWeight.w700, Colors.white),
                  ),
                  SizedBox(width: 6),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
