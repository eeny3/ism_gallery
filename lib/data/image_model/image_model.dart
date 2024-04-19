import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

@JsonSerializable()
class ImageModel {
  @JsonKey()
  final int id;

  @JsonKey(name: 'webformatURL')
  final String imageUrl;

  @JsonKey(name: 'views')
  final int viewsCount;

  @JsonKey(name: 'likes')
  final int likesCount;

  ImageModel({
    required this.id,
    required this.imageUrl,
    required this.viewsCount,
    required this.likesCount,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return _$ImageModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ImageModelToJson(this);
  }
}