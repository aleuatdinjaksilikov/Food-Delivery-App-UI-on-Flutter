import 'package:flutter/material.dart';
import '../../../core/core.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.radiusL)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.35,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Color(0xFF98A8B8),
                borderRadius: BorderRadius.circular(AppDimensions.radiusL)
              ),
            ),
            SizedBox(height: 10,),
            Text("Rose Garden Restaurant",style: TextStyle(fontSize: 20,fontWeight: .bold,fontFamily: "sen"),),
            Text("Burger - Chiken - Riche - Wings ",style: TextStyle(fontSize: 14,fontFamily: "sen"),),
            SizedBox(height: 15,),
            Row(
              children: [
                Icon(Icons.star_border,color: Color(0xFFFFBD69),),
                Text("4.7",style: TextStyle(fontSize: 16,fontWeight: .bold,fontFamily: "sen"),),
                SizedBox(width: 10,),
                Icon(Icons.delivery_dining_outlined,color: Color(0xFFFFBD69),),
                Text("Free",style: TextStyle(fontSize: 16,fontWeight: .bold,fontFamily: "sen"),),
                SizedBox(width: 10,),
                Icon(Icons.access_time,color: Color(0xFFFFBD69),),
                Text("20 min",style: TextStyle(fontSize: 16,fontWeight: .bold,fontFamily: "sen"),),
              ],
            )
          ],
        ),
      ),
    );
  }
}