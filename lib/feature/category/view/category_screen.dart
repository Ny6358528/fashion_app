import 'package:fashion_app/core/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: 'Home Screen',
        icon1: Icons.list,
        icon2: Icons.shopping_cart_outlined,
      ),
      body: Center(child: Text('This is the Category Screen')),
    );
  }
}
