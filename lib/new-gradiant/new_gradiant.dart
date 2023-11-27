// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:custom_widgets/reciepe_content/widgets/custom_material_button.dart';
import 'package:custom_widgets/reciepe_content/widgets/custom_parcent_indicator.dart';
import 'package:custom_widgets/reciepe_content/widgets/meal_image.dart';
import 'package:custom_widgets/reciepe_content/widgets/meal_name.dart';
import 'package:flutter/material.dart';

class NewGradiant extends StatefulWidget {
  const NewGradiant({super.key});

  @override
  State<NewGradiant> createState() => _NewGradiantState();
}

class _NewGradiantState extends State<NewGradiant> {
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const UpperContainerWithMealImage(
                mealNetworkImageUrl:
                    'https://th.bing.com/th/id/R.2fb1c5ca5eee531b38e78136a01dbe86?rik=HnIj4uBzi5fang&riu=http%3a%2f%2fwww.biovoicenews.com%2fwp-content%2fuploads%2f2016%2f11%2frice.jpg&ehk=TD%2bfl4A%2bH6Mhi6sZI4xlRfTkKnNcZKk2HSjODFMq6fI%3d&risl=&pid=ImgRaw&r=0'),
            Positioned(
              top: 24,
              right: 24,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(
                    color: Colors.black45,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.sizeOf(context).height / 3.4,
              bottom: 0.1,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(44),
                        topRight: Radius.circular(44),
                      )),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const MealName(
                        mealName: 'رز مسلوق',
                        alignment: Alignment.topCenter,
                        fontSize: 24,
                      ),
                      SizedBox(height: MediaQuery.sizeOf(context).height / 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomParcentIndicator(
                              radius: MediaQuery.sizeOf(context).height / 15.9,
                              parcent: 0.9,
                              leftPadding: 14,
                              progressColor: Colors.orange.shade900,
                              parcentIndicatorTitle: 'السعرات الحرارية',
                              parcentIndicatorAmount: 60,
                            ),
                            CustomParcentIndicator(
                              radius: MediaQuery.sizeOf(context).height / 17.6,
                              parcent: 0.2,
                              progressColor: Colors.yellow.shade900,
                              parcentIndicatorTitle: 'دهون',
                              parcentIndicatorAmount: 20,
                            ),
                            CustomParcentIndicator(
                              radius: MediaQuery.sizeOf(context).height / 18,
                              parcent: 0.8,
                              progressColor: Colors.red.shade900,
                              parcentIndicatorTitle: 'بروتين',
                              parcentIndicatorAmount: 75,
                            ),
                            CustomParcentIndicator(
                              radius: MediaQuery.sizeOf(context).height / 18,
                              parcent: 0.4,
                              progressColor: Colors.green.shade900,
                              parcentIndicatorTitle: 'كارب',
                              parcentIndicatorAmount: 85,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 48),
                      Text(
                        'حجم الحصة',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          height: 0.02,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                amount++;
                              });
                            },
                            child: Container(
                              height: 54,
                              width: 54,
                              decoration: const BoxDecoration(
                                color: Colors.white30,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          const SizedBox(width: 24),
                          Text(
                            '$amount جرام',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              height: 0.03,
                            ),
                          ),
                          const SizedBox(width: 24),
                          InkWell(
                            onTap: () {
                              setState(() {
                                amount--;
                              });
                            },
                            child: Container(
                              height: 54,
                              width: 54,
                              decoration: const BoxDecoration(
                                color: Colors.white30,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomMaterialButton(
                        buttonColor: Color(
                          0xFFCFFF0F,
                        ),
                        text: ' حفظ',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
