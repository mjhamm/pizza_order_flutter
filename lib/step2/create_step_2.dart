import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza_app/custom_colors.dart';
import 'package:pizza_app/step2/topping_list_item.dart';

class CreateStep2 extends StatefulWidget {
  @override
  _CreateStep2State createState() => _CreateStep2State();
}

class _CreateStep2State extends State<CreateStep2> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: CustomColors.ivory
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CustomColors.ivory,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: CustomColors.ivory,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: BackButton(
                color: CustomColors.orange,
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
          body: Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Choose your toppings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1
                  ),
                ),
                Text(
                  'Max 7',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 16.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                width: 100,
                                child: ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return ToppingListItem();
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                  child: Image.asset(
                    'assets/images/pizza.png',
                    height: 400,
                  ),
                      ),
                      Text(
                  'Total Amount',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                  ),
                      ),
                      Text(
                  '\$12',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                    fontWeight: FontWeight.bold
                  ),
                      ),
                    ],
                  ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}