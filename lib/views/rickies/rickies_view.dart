import 'package:flutter/material.dart';
import 'rickies_view_model.dart';

class RickyiesView extends RickyMortiesViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: fetchAllData),
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(models[index].image ??
                    'https://rickandmortyapi.com/api/character/avatar/435.jpeg'),
              ),
              title: Text(models[index].name ?? ""));
        },
      ),
    );
  }
}
