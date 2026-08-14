import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:food_delivery_app_ui/core/constants/app_colors.dart';
import 'package:food_delivery_app_ui/core/constants/app_dimensions.dart';
import 'package:food_delivery_app_ui/core/widgets/circle_button.dart';
import 'package:food_delivery_app_ui/core/widgets/icon_text.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ingredients = ["tomato", "potato", "sous", "mayanez"];

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
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "Burger Bistro",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "sen",
                          fontWeight: .bold,
                        ),
                      ),
                      SizedBox(height: 20),
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
                            icon: Icons.delivery_dining_outlined,
                            text: "Free",
                            textStyle: TextStyle(fontSize: 14),
                          ),
                          SizedBox(width: 15),
                          IconText(
                            icon: Icons.access_time_rounded,
                            text: "20 min",
                            textStyle: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: ingredients.map((ingredient) {
                          return Chip(
                            avatar: Icon(Icons.info_outline_rounded),
                            side: BorderSide(color: Colors.orange, width: 0.5),
                            label: Text(ingredient),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 20),
                      Text(
                        lorem(paragraphs: 1, words: 200),
                        style: TextStyle(fontFamily: "sen"),
                      ),
                    ],
                  ),
                ),
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
      bottomNavigationBar: _bottomBar(context),
    );
  }

  Widget _bottomBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spaceL,
        vertical: AppDimensions.spaceM,
      ),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppDimensions.radiusXL),
          topRight: Radius.circular(AppDimensions.radiusXL),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$32", style: TextStyle(fontSize: 24, fontFamily: "sen")),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Color(0xFF121223),
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color(0xFF41414F),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "1",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color(0xFF41414F),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDimensions.spaceM),

            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radiusL),
                  ),
                  elevation: 0,
                ),
                child: Text("ADD TO CART", style: TextStyle()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverAppBar _appBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.35,
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
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
