import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:oguzhan_rickandmorty/views/rickies/model/character_model.dart';

import '../model/base_model.dart';

class ProjectNetworkManager {
  static ProjectNetworkManager? _instance;
  static ProjectNetworkManager get instance {
    if (_instance != null) return _instance!;
    _instance = ProjectNetworkManager._init();
    return _instance!;
  }

  final baseUrl = 'https://rickandmortyapi.com/api';
  late final Dio dio;
  ProjectNetworkManager._init() {
    dio = Dio(BaseOptions(baseUrl: baseUrl));
  }
}
