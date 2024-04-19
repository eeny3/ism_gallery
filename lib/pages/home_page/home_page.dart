import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:ism/pages/home_page/home_page_controller.dart';
import 'package:ism/pages/home_page/widgets/custom_text_field.dart';
import 'package:ism/pages/home_page/widgets/image_card.dart';
import 'package:ism/routing/app_router.dart';
import 'package:ism/services/debouncing/debouncer.dart';
import 'package:ism/utils/error_message.dart';
import 'package:ism/utils/grid/custom_grid_delegate.dart';

@RoutePage()
class HomePage extends GetView<HomePageController> {
  final debouncer = Debouncer(milliseconds: 500);

  @override
  final HomePageController controller = Get.put(
    HomePageController(
      imageRepository: GetIt.I(),
    ),
  );

  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121220),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onChanged: (newVal) {
                  debouncer.run(() {
                    controller.resetOnNewQuery();
                    controller.getImages(newVal);
                  });
                },
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: Obx(
                  () {
                    if (controller.error.value.isNotEmpty) {
                      showError(context);
                    }
                    if (controller.isLoading.value) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return GridView.builder(
                        gridDelegate: CustomGridDelegate(dimension: 150.0),
                        itemCount: controller.images.length,
                        itemBuilder: (context, index) {
                          if (index == controller.images.length - 1) {
                            controller.getImages(controller.currentQuery);
                            return const SizedBox();
                          }

                          return GestureDetector(
                            onTap: () {
                              context.router.push(
                                FullImageRoute(
                                  tag: controller.images[index].id.toString(),
                                  url: controller.images[index].imageUrl,
                                ),
                              );
                            },
                            child: Hero(
                              tag: controller.images[index].id.toString(),
                              child: ImageCard(
                                imageUrl: controller.images[index].imageUrl,
                                likesCount: controller.images[index].likesCount,
                                viewsCount: controller.images[index].viewsCount,
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
