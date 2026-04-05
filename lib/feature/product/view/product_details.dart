import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../core/colors/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/model/category_filter_model.dart';
import '../../../core/widgets/appbar_widget.dart';
import '../../category/widgets/filter_widget.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, this.item});

  final CategoryFilterModel? item;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  @override
  void initState() {
    super.initState();

    /// عشان يفتح الـ BottomSheet لوحده
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet(context);
    });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Center(
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                const Gap(20),


                Text(
                  widget.item?.name ?? "Product Name",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Gap(10),

                /// السعر
                Text(
                  "${widget.item?.price ?? "0"} EGP",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),

                const Gap(15),


                const Text(
                  "This product is made with high quality materials and designed for comfort and style.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),

                const Spacer(),


                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {

                    },
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarWidget(
        title: 'Men',
        icon1: Icons.list,
        icon2: Icons.shopping_cart_outlined,
      ),
      body: Column(
        children: [


          const FilterWidget(),

          const Gap(12),


          Expanded(
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [


                  Image.asset(
                    widget.item?.image ?? AppImages.men2Image,
                    width: 500,

                  ),


                  Positioned(
                    bottom: 40,
                    child: SvgPicture.asset(
                      AppImages.shadowImage,
                      width: 200,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}