import 'package:flutter/material.dart';

class FoodListItem extends StatefulWidget {
  const FoodListItem({super.key});

  @override
  State<FoodListItem> createState() => _FoodListItemState();
}

class _FoodListItemState extends State<FoodListItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .start,
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=800&q=80',
                      fit: .cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Positioned(right: 10,bottom: 10,child: Container(color: Colors.white,height: 30,width: 30,))
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "25 000 sum",
              style: TextStyle(fontSize: 16, fontFamily: "sen"),
            ),
            SizedBox(height: 5),
            Text(
              "Burger Ferguson",
              style: TextStyle(
                fontSize: 15,
                fontFamily: "sen",
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
