import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 150,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 95, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Pizza",style: TextStyle(fontFamily: "sen",fontSize: 18,fontWeight: .bold),),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Starting",style: TextStyle(fontFamily: "sen"),), Text("\$70",style: TextStyle(fontFamily: "sen",fontSize: 16),)],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 0,
            left: 15,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
