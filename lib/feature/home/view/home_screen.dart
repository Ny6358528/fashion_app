import 'package:fashion_app/core/constants/app_string.dart';
import 'package:fashion_app/core/constants/conatants_list.dart';
import 'package:fashion_app/core/widgets/appbar_widget.dart';
import 'package:fashion_app/core/widgets/text_widgets.dart';
import 'package:fashion_app/feature/home/widgets/categories_custom.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset('assets/videos/video.mp4')
      ..initialize().then((_) {
        setState(() {
          controller
            ..play()
            ..setLooping(true)
            ..setVolume(0);
        });
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: 'Home Screen',
        icon1: Icons.list,
        icon2: Icons.shopping_cart_outlined,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: [
          ///  Video Banner
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  )
                : const SizedBox(
                    height: 180,
                    child: Center(child: CircularProgressIndicator()),
                  ),
          ),

          const Gap(24),

          ///  Categories Title
          const TextWidgets(
            text: AppString.categoriesText,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),

          const Gap(16),

          ///  Categories List
          SizedBox(
            height: 110,
            child: CategoriesCustom(categories: ConstantsList.categoriesList),
          ),

          const Gap(10),
        ],
      ),
    );
  }
}
