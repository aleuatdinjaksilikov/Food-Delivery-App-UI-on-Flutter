import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/navigation_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            homeApp(),
            SliverToBoxAdapter(
              child: Text("Hey Aleuatdin, Good Afternoon!"),
            ),
            SliverToBoxAdapter(
              child: TextFormField(
                readOnly: true,
                onTap: () => context.toSearch(),
                decoration: InputDecoration(
                  
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter homeApp() {
    return SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFFECF0F4),
                    shape: .circle
                  ),
                  child: Icon(Icons.menu_rounded),
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text("Deliver to"),
                    Text("It Park Karakalpakstan")
                  ],
                ),
                Spacer(),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: .circle
                  ),
                  child: Icon(Icons.shopping_basket_outlined,color: Colors.white,),
                ),
              ],
            ),
          );
  }
}