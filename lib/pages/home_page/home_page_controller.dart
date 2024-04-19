import 'package:get/get.dart';
import 'package:ism/data/image_model/image_model.dart';
import 'package:ism/repositories/image_repository.dart';

class HomePageController extends GetxController {
  final ImageRepository _imageRepository;
  int currentPage = 0;
  final int perPage = 40;
  RxBool hasMore = true.obs;
  String currentQuery = '';
  RxBool isLoading = false.obs;
  RxString error = ''.obs;
  RxList<ImageModel> images = <ImageModel>[].obs;

  HomePageController({required ImageRepository imageRepository})
      : _imageRepository = imageRepository;

  @override
  void onInit() async {
    isLoading.value = true;
    await getImages(currentQuery);
    isLoading.value = false;
    super.onInit();
  }

  getImages(String query) async {
    error.value = '';
    try {
      if (hasMore.value) {
        if (currentQuery != query) {
          isLoading.value = true;
          images = <ImageModel>[].obs;
        }

        currentPage++;
        currentQuery = query;

        final newImages = await _imageRepository.getImages(
          query,
          currentPage,
          perPage,
        );

        if (newImages.isEmpty) {
          hasMore = false.obs;
        } else {
          images.addAll(newImages);
        }

        if (isLoading.value) {
          isLoading.value = false;
        }
      }
    } catch(e) {
      error.value = e.toString();
    }
  }

  resetOnNewQuery() {
    currentPage = 0;
    hasMore = true.obs;
  }
}
