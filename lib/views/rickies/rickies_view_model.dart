import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:oguzhan_rickandmorty/core/network/project_network_manager.dart';
import 'package:oguzhan_rickandmorty/views/rickies/model/character_model.dart';
import 'package:oguzhan_rickandmorty/views/rickies/rickies_mobile.dart';

abstract class RickyMortiesViewModel extends State<RickMorties> {
  final Dio dio = ProjectNetworkManager.instance.dio;
  List<CharacteModel> models = [];
  Future<void> fetchAllData() async {
    final response = await dio.get('/character');
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        final baseCharacterModel = BaseResponseCharacter.fromJson(data);
        models = baseCharacterModel.results ?? [];
      }
    }
    setState(() {});
  }
}
