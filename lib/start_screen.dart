import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza_app/custom_colors.dart';
import 'package:pizza_app/favorite_list_item.dart';
import 'package:pizza_app/home_screen.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  int _currentIndex = 0;

  final List<Widget> children = [
    HomeScreen(),
    Placeholder(color: Colors.blue,),
    Placeholder(color: Colors.red,),
    Placeholder(color: Colors.green,)
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: CustomColors.ivory
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: CustomColors.ivory,
            leading: 
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: IconButton(
                  splashRadius: 24,
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.line_horizontal_3, color: CustomColors.orange,),
                ),
              ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                  splashRadius: 24,
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.bag, color: CustomColors.orange,),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            iconSize: 28,
            unselectedFontSize: 12,
            selectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: CustomColors.orange,
            showSelectedLabels: true,
            unselectedItemColor: CustomColors.grey,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_pizza_outlined),
                label: 'Orders'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                label: 'Favorites'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile'
              )
            ],
          ),
          backgroundColor: CustomColors.ivory,
          body: children[_currentIndex]
        ),
      ),
    );
  }
}