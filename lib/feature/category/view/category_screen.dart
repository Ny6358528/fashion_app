import 'package:fashion_app/core/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/category_filter.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: 'Men',
        icon1: Icons.list,
        icon2: Icons.shopping_cart_outlined,
      ),
      body:Column(children: [
        CategoryFilter()
      ],)
    );
  }
}
