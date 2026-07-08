import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/navigation_extension.dart';
import 'package:food_delivery_app_ui/presentation/home/shared/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: [
              homeApp(),
              SliverToBoxAdapter(child: Text("Hey Aleuatdin, Good Afternoon!")),
              searchSection(context),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          "All Categories",
                          style: TextStyle(fontSize: 20, fontFamily: "sen"),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "sen",
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.arrow_forward_ios_rounded, size: 18),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    SizedBox(
                      height : 220,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(width: 10,),
                        scrollDirection: .horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return CategoryCard();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter searchSection(BuildContext context) {
    return SliverToBoxAdapter(
      child: TextFormField(
        readOnly: true,
        onTap: () => context.toSearch(),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_rounded, color: Color(0xFFA0A5BA)),
          hintText: "Search dishes,restaurants",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          ),
          filled: true,
          fillColor: Color(0xFFF6F6F6),
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
            decoration: BoxDecoration(color: Color(0xFFECF0F4), shape: .circle),
            child: Icon(Icons.menu_rounded),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: .start,
            children: [Text("Deliver to"), Text("It Park Karakalpakstan")],
          ),
          Spacer(),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(color: Colors.black, shape: .circle),
            child: Icon(Icons.shopping_basket_outlined, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
