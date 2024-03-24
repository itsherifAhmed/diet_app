import 'package:diet_app/constants/text_styles.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List title = [
      'Personalized Diet Plans:',
      'Nutritional Guidance: ',
      'Progress Tracking: ',
      'Recipes and Tips: ',
    ];

    List description = [
      'Tailored meal plans designed to meet your specific dietary needs and preferences.',
      'Access to comprehensive nutritional information to make informed food choices.',
      'Monitor your progress, set goals, and stay motivated on your wellness journey.',
      'Explore a variety of healthy recipes and receive tips from nutrition experts.',
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Abou Us'),
        ),
        body: ListView.builder(
          itemCount: title.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title[index],
                      style: settingCardStyle1(),
                    ),
                    Text(
                      description[index],
                      style: settingCardStyle2(),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
