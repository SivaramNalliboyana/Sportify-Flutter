import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/home_feed/screen/home_screen.dart';
import 'package:sportify/navigator/bloc/navigator_bloc.dart';

final List screens = [
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
];

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigatorBloc, int>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.indigoAccent,
            unselectedItemColor: Colors.black87,
            type: BottomNavigationBarType.fixed,
            currentIndex: state,
            onTap: (selectedIndex) => context.read<NavigatorBloc>().add(
              NavigatorPressed(selectedIndex),
            ),
            items: [
              BottomNavigationBarItem(icon: Icon(EvaIcons.home), label: ""),
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.messageCircleOutline),
                label: "",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.heartOutline),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.personOutline),
                label: "",
              ),
            ],
          ),
          body: screens[state],
        );
      },
    );
  }
}
