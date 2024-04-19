import 'package:ism/data/image_model/image_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result_model.g.dart';

@JsonSerializable()
class SearchResultModel {
  @JsonKey()
  final int total;

  @JsonKey()
  final int totalHits;

  @JsonKey()
  final List<ImageModel> hits;

  SearchResultModel({
    required this.total,
    required this.totalHits,
    required this.hits,
  });

  factory SearchResultModel.fromJson(Map<String, dynamic> json) {
    return _$SearchResultModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SearchResultModelToJson(this);
  }
}