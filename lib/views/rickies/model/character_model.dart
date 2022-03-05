import 'package:json_annotation/json_annotation.dart';

import '../../../core/model/base_model.dart';
part 'character_model.g.dart';

@JsonSerializable()
class CharacteModel {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;

  String? image;
  String? url;
  String? created;

  CharacteModel(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.image,
      this.url,
      this.created});

  factory CharacteModel.fromJson(Map<String, dynamic> json) {
    return _$CharacteModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CharacteModelToJson(this);
  }
}

@JsonSerializable()
class BaseResponseCharacter extends BaseResponseModel {
  List<CharacteModel>? results;
  BaseResponseCharacter({this.results});
  factory BaseResponseCharacter.fromJson(Map<String, dynamic> json) {
    return _$BaseResponseCharacterFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BaseResponseCharacterToJson(this);
  }
}
