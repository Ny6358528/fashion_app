import 'package:fashion_app/core/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/conatants_list.dart';
import '../../product/view/product_details.dart';
import '../widgets/category_filter.dart';
import '../widgets/filter_widget.dart';

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
        body: Column(
          children: [
            FilterWidget(),

            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemCount: ConstantsList.categoryFilterModel.length,
                itemBuilder: (context, index)  {
                  final item=ConstantsList.categoryFilterModel[index];
                  return InkWell(
                    onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return ProductDetails(item: item,);
                    })),
                    child: CategoryFilter(
                    categoryFilterModel: item,
                    ),
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}
