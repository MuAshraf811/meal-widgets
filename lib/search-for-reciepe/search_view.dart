import 'package:flutter/material.dart';

class SearchForReciepe extends StatelessWidget {
  const SearchForReciepe({super.key});

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
                onTap: () {},
              ),
              const SizedBox(height: 24),
              CustomTextField(
                controller: TextEditingController(),
                onChange: (s) {},
              ),
              const SizedBox(height: 32),
              const GradiantNameAndDetails(gradiantName: 'رز مسلوق' , amount: 20 , calories: 200, imageUrl: 'https://th.bing.com/th/id/R.2fb1c5ca5eee531b38e78136a01dbe86?rik=HnIj4uBzi5fang&riu=http%3a%2f%2fwww.biovoicenews.com%2fwp-content%2fuploads%2f2016%2f11%2frice.jpg&ehk=TD%2bfl4A%2bH6Mhi6sZI4xlRfTkKnNcZKk2HSjODFMq6fI%3d&risl=&pid=ImgRaw&r=0',),
              const SizedBox(height: 32),
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
                // indent: 6,
                // endIndent: 6,
                thickness: 2.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradiantNameAndDetails extends StatelessWidget {
  const GradiantNameAndDetails({
    super.key,
    required this.gradiantName,
    required this.amount,
    required this.imageUrl,
    required this.calories,
  });
  final String gradiantName;
  final String imageUrl;
  final num amount;
  final num calories;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  gradiantName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'الكمية : $amount جرام',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'السعرات : $calories',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            margin: const EdgeInsets.only(right: 6),
            width: 118,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.onChange,
  });
  final TextEditingController controller;
  final void Function(String) onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChange,
      cursorColor: const Color(
        0xFFCFFF0F,
      ),
      decoration: InputDecoration(
        constraints: const BoxConstraints(
          maxHeight: 50,
        ),
        fillColor: Colors.white10,
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(
            Icons.search,
            size: 30,
            color: Color(
              0xFFCFFF0F,
            ),
          ),
        ),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
    );
  }
}

class UpperPartWithBackButton extends StatelessWidget {
  const UpperPartWithBackButton({
    super.key,
    required this.onTap,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'أبحث عن أي مكون في بالك',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 12),
        InkWell(
          onTap: onTap,
          child: Container(
            height: 48,
            width: 48,
            decoration: const BoxDecoration(
              color: Colors.white30,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
