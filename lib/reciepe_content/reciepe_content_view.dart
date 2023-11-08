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
  ReciepeContentView({super.key});
  final List<double> indicatorRadius = [42, 36, 36, 36];
  final List<double> parcent = [0.8, 0.5, 0.2, 0.7];
  final List<int> parcentIndicatorAmount = [80, 50, 20, 60];
  final List<String> parcentIndicatorTitle = [
    'السعرات الحرارية',
    'دهون',
    'بروتين',
    'كارب'
  ];
  final List<Color> progressColor = [
    Colors.green.shade900,
    Colors.orange,
    Colors.red.shade900,
    Colors.yellow
  ];
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
                          padding: const EdgeInsets.only(
                            left: 28,
                            top: 22,
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CustomOutLinesdButton(
                              onTap: () {},
                              text: 'تكرار الوجبة',
                              buttonHorizontalpadding: 12,
                              buttonLeftMargin: 8,
                            ),
                          ),
                        ),
                        const MealName(mealName: 'بيتزا دجاج وخضار'),
                      ],
                    ),
                    const SizedBox(height: 48),
                    SizedBox(
                      height: 150,
                      width: MediaQuery.sizeOf(context).width,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 24),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: CustomParcentIndicator(
                              radius: indicatorRadius[index],
                              parcent: parcent[index],
                              progressColor: progressColor[index],
                              parcentIndicatorTitle:
                                  parcentIndicatorTitle[index],
                              parcentIndicatorAmount:
                                  parcentIndicatorAmount[index],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    SectionTitleAndItsActionButton(
                      sectionTitle: 'المقادير',
                      buttonName: 'تخصيص',
                      onTap: () {},
                    ),
                    const SizedBox(height: 24),
                    const CustomMealIngradiantsContainer(
                      ingradiantName: 'دجاج',
                      ingradiantAmount: 'جرام 30',
                    ),
                    const CustomDividerBetweenIngradients(),
                    const SizedBox(height: 24),
                    const CustomMealIngradiantsContainer(
                      ingradiantName: 'دقيق أبيض',
                      ingradiantAmount: 'جرام 200',
                    ),
                    const CustomDividerBetweenIngradients(),
                    const SizedBox(height: 24),
                    const CustomMealIngradiantsContainer(
                      ingradiantName: 'زيت زيتون',
                      ingradiantAmount: 'جرام 100',
                    ),
                    const CustomDividerBetweenIngradients(),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomOutLinesdButton(
                      onTap: () {},
                      text: 'إدخال مكون',
                      buttonHorizontalpadding: 18,
                      buttonLeftMargin: 24,
                    ),
                    const CustomDividerBetweenIngradients(),
                    const SizedBox(height: 20),
                    SectionTitleAndItsActionButton(
                      sectionTitle: 'طريقة التحضير',
                      buttonName: 'فيديو طريقة التحضير',
                      onTap: () {},
                    ),
                    const SizedBox(height: 22),
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
                    const SizedBox(height: 24),
                    CustomMaterialButton(
                      buttonColor: const Color.fromARGB(255, 78, 231, 83),
                      text: 'إضافة الوجبة',
                      onTap: () {},
                    ),
                    const SizedBox(height: 24),
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
