import 'package:flutter/material.dart';
import 'package:furniture/views/home_directory/product_view_section/tab_bar_section.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              90.ph,
              const Text(
                'Furniture Designer',
                style: TextStyle(fontSize: 25),
              ),
              10.ph,
              Text(
                'The Best Place To Buy Your Furniture.'.toUpperCase(),
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown.shade300,
                ),
              ),
              60.ph,
              const Expanded(
                child: ProductsSection(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension on num {
  SizedBox get ph => SizedBox(
        height: toDouble(),
      );
}
