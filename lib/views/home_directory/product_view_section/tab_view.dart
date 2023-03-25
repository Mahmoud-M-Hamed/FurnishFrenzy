import 'package:flutter/material.dart';
import 'package:furniture/view_model/products_view_model/products_view_model.dart';

class TabViewSection extends StatelessWidget {
  TabController? tabController;
  final int itemLength;

  TabViewSection(
      {super.key, required this.tabController, required this.itemLength});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          itemLength,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ProductsViewModel(index: index),
          ),
        ),
      ),
    );
  }
}
