import 'package:flutter/material.dart';

class ToppingListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, top: 6.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red[200],
                      blurRadius: 6,
                    )
                  ]
                ),
              ),
              Image.asset(
                'assets/images/tomato.png',
                height: 60,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Tomato',
              style: TextStyle(
                color: Colors.black
              ),
            ),
          )
        ],
      )
    );
  }
}