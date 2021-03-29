import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/custom_colors.dart';
import 'package:pizza_app/favorite_list_item.dart';
import 'package:pizza_app/favorites_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<FavoritesListItem> favoritesList = [
    FavoritesListItem(favoritesItem: FavoritesItem('assets/images/pizza.png','Classic Cheese', 'The good ol\' fashioned classic cheese pizza', 11)),
    FavoritesListItem(favoritesItem: FavoritesItem('assets/images/pizza.png','Classic Pepperoni', 'The good ol\' fashioned classic pepperoni pizza', 12)),
    FavoritesListItem(favoritesItem: FavoritesItem('assets/images/pizza.png','Happy Hawaiian', 'A pizza topped with pineapple and ham', 14)),
    FavoritesListItem(favoritesItem: FavoritesItem('assets/images/pizza.png','Meatlovers', 'A pizza packed full of bacon, hamburger, ham and sausage', 16)),
    FavoritesListItem(favoritesItem: FavoritesItem('assets/images/pizza.png','Big Mac', 'Hamburger, lettuce, cheese and topped with special sauce', 15)),
    FavoritesListItem(favoritesItem: FavoritesItem('assets/images/pizza.png','Loaded Potato', 'A loaded pizza with potato, cheese and bacon', 14)),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 24, right: 24),
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
                'Let\'s get the best pizza for your next meal!',
                style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.grey[500]
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.grey[600],
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
          Container(
            height: 375,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              addRepaintBoundaries: false,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return favoritesList[index];
              }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Can\'t Decide?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomColors.smokey,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: CustomColors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              child: Text(
                'Create my own Pizza',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}