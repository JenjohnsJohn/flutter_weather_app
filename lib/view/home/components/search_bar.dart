import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/view_model/controllers/home_controller.dart';

class PlaceSearchBar extends StatelessWidget {
  PlaceSearchBar({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: TextField(
          decoration: InputDecoration(
            labelText: 'Search Place',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: Icon(Icons.search),
          ),
          onSubmitted: (value) {
            if (value.length != 0) {
              controller.place.value = value;
              controller.getData();
            }
          }),
    );
  }
}
