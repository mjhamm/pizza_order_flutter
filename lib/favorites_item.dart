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
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      favoriteName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(                      
                        'This the good ol\' fashioned, pepperoni pizza!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        '\$$price',
                        style: TextStyle(
                          color: CustomColors.orange,
                          fontSize: 26,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: CustomColors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add to Order',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
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