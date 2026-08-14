import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/models/food_model.dart';
import 'package:food_delivery_app_ui/core/widgets/food_list_item.dart';

class FoodList extends StatelessWidget {
  final List<FoodModel> items;
  const FoodList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    if(items.isEmpty){
      return const Center(child: Text("Нет блюд в этой категории",style: TextStyle(fontSize: 18,fontWeight: .bold),),);
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ), 
      itemBuilder: (context, index) {
        return FoodListItem();
      },
      itemCount: 5,
    );
  }
}