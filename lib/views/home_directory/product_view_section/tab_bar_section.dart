import 'package:flutter/material.dart';
import 'package:furniture/views/home_directory/product_view_section/tab_view.dart';

class ProductsSection extends StatefulWidget {
  const ProductsSection({super.key});

  @override
  State<ProductsSection> createState() => _ProductsSectionState();
}

class _ProductsSectionState extends State<ProductsSection>
    with TickerProviderStateMixin {
  List<String> tabBarTitles = [
    'CHAIRS',
    'COUCHES',
    'BEDS',
    'CLOSET',
    'TABLES',
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabController(length: tabBarTitles.length, vsync: this);
    return Scaffold(
      body: Row(
        children: [
          RotatedBox(
            quarterTurns: 1,
            child: DefaultTabController(
              length: tabBarTitles.length,
              initialIndex: 2,
              child: TabBar(
                controller: tabController,
                physics: const BouncingScrollPhysics(),
                indicatorColor: Colors.brown,
                labelColor: Colors.black,
                indicatorWeight: 5,
                isScrollable: true,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
                unselectedLabelColor: Colors.grey,
                splashBorderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                tabs: List.generate(
                  tabBarTitles.length,
                  (index) => Tab(
                    text: tabBarTitles[index],
                  ),
                ),
              ),
            ),
          ),
          TabViewSection(
            tabController: tabController,
            itemLength: tabBarTitles.length,
          ),
        ],
      ),
    );
  }
}
