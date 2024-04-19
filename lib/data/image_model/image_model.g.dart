// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
      id: json['id'] as int,
      imageUrl: json['webformatURL'] as String,
      viewsCount: json['views'] as int,
      likesCount: json['likes'] as int,
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'webformatURL': instance.imageUrl,
      'views': instance.viewsCount,
      'likes': instance.likesCount,
    };
