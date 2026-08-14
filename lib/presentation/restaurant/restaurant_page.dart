import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/constants/app_colors.dart';
import 'package:food_delivery_app_ui/core/constants/app_dimensions.dart';
import 'package:food_delivery_app_ui/core/models/food_model.dart';
import 'package:food_delivery_app_ui/core/widgets/category_selector.dart';
import 'package:food_delivery_app_ui/core/widgets/circle_button.dart';
import 'package:food_delivery_app_ui/core/widgets/food_list_item.dart';
import 'package:food_delivery_app_ui/core/widgets/icon_text.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  final List<String> categories = ['Burger', 'Sandwich', 'Pizza', 'Sushi'];

  late String selectedCategory = categories.first;

  final List<FoodModel> allFoodItems = [
    FoodModel(name: 'Cheeseburger', category: 'Burger', price: 5.99),
    FoodModel(name: 'Double Burger', category: 'Burger', price: 7.99),
    FoodModel(name: 'Bacon Burger', category: 'Burger', price: 8.49),
    FoodModel(name: 'Club Sandwich', category: 'Sandwich', price: 6.49),
    FoodModel(name: 'Chicken Sandwich', category: 'Sandwich', price: 6.99),
    FoodModel(name: 'Margherita', category: 'Pizza', price: 8.99),
    FoodModel(name: 'Pepperoni', category: 'Pizza', price: 9.99),
    FoodModel(name: 'California Roll', category: 'Sushi', price: 10.99),
  ];

  List<FoodModel> get filteredItems =>
      allFoodItems.where((item) => item.category == selectedCategory).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              _appBar(context),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconText(
                            icon: Icons.star_border_rounded,
                            text: "4.7",
                            textStyle: TextStyle(
                              fontWeight: .bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 15),
                          IconText(
                            icon: Icons.access_time_rounded,
                            text: "20 min",
                            textStyle: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: CategorySelector(
                  categories: categories,
                  selectedCategory: selectedCategory,
                  onCategorySelected: (value) {
                    setState(() {
                      selectedCategory = value;
                    });
                  },
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.70,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  final item = filteredItems[index];
                  return FoodListItem();
                }, childCount: filteredItems.length),
              ),
            ],
          ),
          Positioned(
            top: 50,
            left: 16,
            child: CircleButton(
              icon: Icons.arrow_back_ios_new_rounded,
              onTap: () => Navigator.pop(context),
            ),
          ),

          Positioned(
            top: 50,
            right: 16,
            child: CircleButton(
              icon: Icons.favorite_rounded,
              iconColor: AppColors.primary,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _appBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.20,
      pinned: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(AppDimensions.radiusXL),
            bottomRight: Radius.circular(AppDimensions.radiusXL),
          ),
          child: Image.network(
            "https://fastly.picsum.photos/id/225/1500/979.jpg?hmac=jvGoek9ng_Y0GaBbzxN0KJhHaiPtk1VfRcukK8R8FxQ",
            fit: .cover,
          ),
        ),
      ),
    );
  }
}
