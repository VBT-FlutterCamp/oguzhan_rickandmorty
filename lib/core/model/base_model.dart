import 'package:json_annotation/json_annotation.dart';
part 'base_model.g.dart';

@JsonSerializable()
class InfoModel {
  int? count;
  int? pages;
  String? next;

  InfoModel({this.count, this.pages, this.next});

  factory InfoModel.fromJson(Map<String, dynamic> json) {
    return _$InfoModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$InfoModelToJson(this);
  }
}

@JsonSerializable()
class BaseResponseModel {
  InfoModel? info;
  BaseResponseModel({this.info});
}
