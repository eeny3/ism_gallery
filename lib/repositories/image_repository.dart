import 'package:injectable/injectable.dart';
import 'package:ism/data/image_model/image_model.dart';
import 'package:ism/services/networking/client.dart';

@lazySingleton
class ImageRepository {
  final RestClient _client;

  ImageRepository(this._client);

  Future<List<ImageModel>> getImages(
    String query,
    int page,
    int perPage,
  ) async {
    try {
      final result = await _client.getImages(query, page, perPage);
      return result.hits;
    } catch (e) {
      rethrow;
    }
  }
}
