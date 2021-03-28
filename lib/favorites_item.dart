import 'package:flutter/material.dart';
import 'package:pizza_app/custom_colors.dart';

class FavoritesItem extends StatelessWidget {

  final String favoriteName;
  final String image;
  final int price;

  const FavoritesItem({Key key, this.favoriteName, this.image, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.7,
        color: CustomColors.ivory,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage(image),
                width: MediaQuery.of(context).size.width / 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}