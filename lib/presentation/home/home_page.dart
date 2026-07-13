import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/constants/app_dimensions.dart';
import 'package:food_delivery_app_ui/core/navigation/navigation_extension.dart';
import 'package:food_delivery_app_ui/presentation/home/shared/category_card.dart';
import 'package:food_delivery_app_ui/presentation/home/shared/restaurant_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: [
              homeApp(),
              sectionGap(),
              SliverToBoxAdapter(child: Text("Hey Aleuatdin, Good Afternoon!")),
              sectionGap(),
              searchSection(context),
              sectionGap(),
              categoriesSection(),
              sectionGap(),
              restaurantsSectionTitle(),
              sectionGap(),
              restaurantsList(),
            ],
          ),
        ),
      ),
    );
  }

  SliverList restaurantsList() {
    return SliverList.separated(
      itemBuilder: (context, index) {
        return RestaurantCard();
      },
      separatorBuilder: ((context, index) => const SizedBox(height: 10)),
      itemCount: 5,
    );
  }

  SliverToBoxAdapter restaurantsSectionTitle() {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Text(
            "Open Restaurants",
            style: TextStyle(fontSize: 20, fontFamily: "sen"),
          ),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "See All",
                  style: TextStyle(fontSize: 16, fontFamily: "sen"),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios_rounded, size: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter categoriesSection() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
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
                      style: TextStyle(fontSize: 16, fontFamily: "sen"),
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
            height: 220,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 10),
              scrollDirection: .horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return CategoryCard();
              },
            ),
          ),
        ],
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
            alignment: Alignment.center,
            height: 45,
            width: 45,
            decoration: BoxDecoration(color: Color(0xFFECF0F4), shape: .circle),
            child: IconButton(icon: Icon(Icons.menu_rounded),onPressed: () =>  _scaffoldKey.currentState?.openDrawer(),),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: .start,
            children: [Text("Deliver to"), Text("It Park Karakalpakstan")],
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            height: 45,
            width: 45,
            decoration: BoxDecoration(color: Colors.black, shape: .circle),
            child: Icon(Icons.shopping_basket_outlined, color: Colors.white),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter sectionGap([double height = AppDimensions.kSectionGap]) =>
      SliverToBoxAdapter(child: SizedBox(height: height));
}
