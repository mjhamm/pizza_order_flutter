import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza_app/step3/create_step_3.dart';
import 'package:pizza_app/colors/custom_colors.dart';
import 'package:pizza_app/step_item.dart';
import 'package:pizza_app/step_list_item.dart';

class CreateStep2 extends StatefulWidget {

  const CreateStep2({Key key}) : super(key: key);  

  @override
  _CreateStep2State createState() => _CreateStep2State();
}

class _CreateStep2State extends State<CreateStep2> {

  var price = 11;

  final List<StepListItem> items = [
    StepListItem(item: StepItem('assets/images/pizza.png', 'Regular', 0),),
    StepListItem(item: StepItem('assets/images/pizza.png', 'Thin', 2),),
    StepListItem(item: StepItem('assets/images/pizza.png', 'Deep Dish', 3),),
  ];

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
          body: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Choose your crust',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 36.0),
                  child: Container(
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        scrollPhysics: BouncingScrollPhysics(),
                        viewportFraction: 0.6,
                        height: MediaQuery.of(context).size.height / 2.5,
                        initialPage: 0,
                        enableInfiniteScroll: false,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.scale
                      ),
                      itemCount: 3,
                      itemBuilder: (context, index, realIndex) =>
                        items[index]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 36.0, bottom: 4.0),
                  child: Text(
                    'Total Amount',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14
                    ),
                  ),
                ),
                Text(
                  '\$$price',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: CustomColors.orange,
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45)
                      )
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateStep3()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    )
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