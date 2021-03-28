import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza_app/custom_colors.dart';
import 'package:pizza_app/favorites_item.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: CustomColors.ivory
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CustomColors.ivory,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      splashRadius: 24,
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.line_horizontal_3, color: CustomColors.orange,),
                    ),
                    IconButton(
                      splashRadius: 24,
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.bag, color: CustomColors.orange,),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello There!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/obiwan.jpg'),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8.0),
                  child: Text(
                    'Let\'s make the best pizza for your next\nmeal!',
                    style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.grey[500]
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 24.0, right: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(                        
                      'The Favorites',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  addRepaintBoundaries: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return FavoritesItem(favoriteName: 'Cheese Pizza', image: 'assets/images/pizza.png', price: 12,);
                  }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Let\'s get started!',
                    style: TextStyle(
                      color: CustomColors.smokey,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: CustomColors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: Text(
                  'Create My Order!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}