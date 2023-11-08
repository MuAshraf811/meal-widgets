import 'package:custom_widgets/reciepe_content/widgets/custom_divider.dart';
import 'package:custom_widgets/reciepe_content/widgets/custom_material_button.dart';
import 'package:custom_widgets/reciepe_content/widgets/custom_meal_ingradiant_container.dart';
import 'package:custom_widgets/reciepe_content/widgets/custom_outlined_button.dart';
import 'package:custom_widgets/reciepe_content/widgets/custom_parcent_indicator.dart';
import 'package:custom_widgets/reciepe_content/widgets/meal_image.dart';
import 'package:custom_widgets/reciepe_content/widgets/meal_name.dart';
import 'package:custom_widgets/reciepe_content/widgets/section_title_button.dart';
import 'package:flutter/material.dart';
import 'widgets/making_meal_step.dart';

class ReciepeContentView extends StatelessWidget {
  const ReciepeContentView({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).width.toString());
    // print(MediaQuery.sizeOf(context).height.toString());

    return Scaffold(
      body: Stack(
        children: [
          const UpperContainerWithMealImage(
              mealNetworkImageUrl:
                  'https://th.bing.com/th/id/R.ccdb0bbb71f07db8b7bec53849a581a5?rik=fZJtAIdJ9rtXJg&pid=ImgRaw&r=0'),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 3.4,
            bottom: 0.1,
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(64),
                      topRight: Radius.circular(64),
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.sizeOf(context).height / 22,
                              top: MediaQuery.sizeOf(context).height / 22),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CustomOutLinesdButton(
                              onTap: () {},
                              text: 'تكرار الوجبة',
                              buttonHorizontalpadding:
                                  MediaQuery.sizeOf(context).height / 53.4,
                              buttonLeftMargin:
                                  MediaQuery.sizeOf(context).height / 79.75,
                            ),
                          ),
                        ),
                        const MealName(mealName: 'بيتزا دجاج وخضار'),
                      ],
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomParcentIndicator(
                            radius: MediaQuery.sizeOf(context).height / 15.7,
                            parcent: 0.9,
                            progressColor: Colors.orange.shade900,
                            parcentIndicatorTitle: 'السعرات الحرارية',
                            parcentIndicatorAmount: 60,
                          ),
                          CustomParcentIndicator(
                            radius: MediaQuery.sizeOf(context).height / 18,
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
                    SizedBox(height: MediaQuery.sizeOf(context).height / 21.5),
                    SectionTitleAndItsActionButton(
                      sectionTitle: 'المقادير',
                      buttonName: 'تخصيص',
                      onTap: () {},
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 26),
                    const CustomMealIngradiantsContainer(
                      ingradiantName: 'دجاج',
                      ingradiantAmount: 'جرام 30',
                    ),
                    const CustomDividerBetweenIngradients(),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 26),
                    const CustomMealIngradiantsContainer(
                      ingradiantName: 'دقيق أبيض',
                      ingradiantAmount: 'جرام 200',
                    ),
                    const CustomDividerBetweenIngradients(),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 26),
                    const CustomMealIngradiantsContainer(
                      ingradiantName: 'زيت زيتون',
                      ingradiantAmount: 'جرام 100',
                    ),
                    const CustomDividerBetweenIngradients(),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 45.5),
                    CustomOutLinesdButton(
                      onTap: () {},
                      text: 'إدخال مكون',
                      buttonHorizontalpadding: 18,
                      buttonLeftMargin: 24,
                    ),
                    const CustomDividerBetweenIngradients(),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 27.5),
                    SectionTitleAndItsActionButton(
                      sectionTitle: 'طريقة التحضير',
                      buttonName: 'فيديو طريقة التحضير',
                      onTap: () {},
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 27),
                    const Padding(
                      padding: EdgeInsets.only(right: 28),
                      child: Column(
                        children: [
                          MakingMealStep(
                            stepName: 'خلط الدقيق مع الماء',
                          ),
                          SizedBox(height: 12),
                          MakingMealStep(
                            stepName: 'تقليب العجين جيدا وتركه لمدة 10 دقائق',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 26),
                    CustomMaterialButton(
                      buttonColor: const Color.fromARGB(255, 78, 231, 83),
                      text: 'إضافة الوجبة',
                      onTap: () {},
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 26),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
