import 'package:flutter/material.dart';
import 'widgets/gradiant_name_details.dart';
import 'widgets/text_form_field.dart';
import 'widgets/upper_part_with_backButton.dart';

class SearchForReciepe extends StatelessWidget {
  SearchForReciepe({super.key});
  final List<String> gradiantsName = [' مكرونة', 'رز مسلوق'];
  final List<int> amount = [20, 110];
  final List<int> calories = [700, 850];
  final List<String> imagesNetwork = [
    'https://th.bing.com/th/id/OIP.Yevmy4GKsTNYEmrV8bOPHgHaE-?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/R.2fb1c5ca5eee531b38e78136a01dbe86?rik=HnIj4uBzi5fang&riu=http%3a%2f%2fwww.biovoicenews.com%2fwp-content%2fuploads%2f2016%2f11%2frice.jpg&ehk=TD%2bfl4A%2bH6Mhi6sZI4xlRfTkKnNcZKk2HSjODFMq6fI%3d&risl=&pid=ImgRaw&r=0',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 32, left: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              UpperPartWithBackButton(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 24),
              CustomTextField(
                controller: TextEditingController(),
                onChange: (s) {},
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 156 * amount.length.toDouble(),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){},
                        child: GradiantNameAndDetails(
                            gradiantName: gradiantsName[index],
                            amount: amount[index],
                            imageUrl: imagesNetwork[index],
                            calories: calories[index]),
                      );
                    },
                    separatorBuilder: (index, context) {
                      return const Divider(
                        color: Colors.white,
                        indent: 32,
                        endIndent: 32,
                        thickness: 1.5,
                        height: 24,
                      );
                    },
                    itemCount: gradiantsName.length),
              ),
              const Text(
                'بحثت عنه مؤخرا',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Divider(
                color: Color(
                  0xFFCFFF0F,
                ),
                thickness: 2.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


