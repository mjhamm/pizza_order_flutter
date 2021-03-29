import 'package:flutter/material.dart';
import 'package:pizza_app/custom_colors.dart';
import 'package:pizza_app/step_item.dart';

class StepListItem extends StatelessWidget {

  final StepItem item;

  const StepListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height,
      color: CustomColors.ivory,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 220,
              width: MediaQuery.of(context).size.width / 2.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90), bottomRight: Radius.circular(90)),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 36.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      item.type,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        '\$${item.price}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage(item.image),
                width: MediaQuery.of(context).size.width / 0.5,
              ),
            ),
        ],
      ),
    );
  }
}