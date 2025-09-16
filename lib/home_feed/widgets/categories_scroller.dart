import 'package:flutter/material.dart';
import 'package:sportify/utils/data/categories.dart';
import 'package:sportify/utils/fonts/fonts.dart';

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: categories
            .map(
              (e) => Column(
                children: [
                  Container(
                    width: 74,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(64)),
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1.5,
                      ),
                    ),
                    child: Icon(e.$2, color: Colors.black, size: 38),
                  ),
                  SizedBox(height: 10),
                  Text(
                    e.$1,
                    style: montserrat(12, FontWeight.w600, Colors.black),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
