import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza_app/colors/custom_colors.dart';
import 'package:pizza_app/step3/topping_list_item.dart';

class CreateStep3 extends StatefulWidget {
  @override
  _CreateStep3State createState() => _CreateStep3State();
}

class _CreateStep3State extends State<CreateStep3> {
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
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      'Max 7',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),
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
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 100,
                                  child: ListView.builder(
                                    shrinkWrap: true,
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
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0, top: 8.0),
                          child: Text(
                            'You may add more ingredients, but each new addition after the third one costs \$0.50.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: CustomColors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45)
                              )
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                              child: Text(
                                'Make It!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                                ),
                              ),
                            ),
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
      ),
    );
  }
}