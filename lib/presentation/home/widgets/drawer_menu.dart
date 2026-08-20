import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/presentation/home/widgets/drawer_item.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: .end,
                  crossAxisAlignment: .start,
                  children: [
                    Text("Vishal Khadok",style: Theme.of(context).textTheme.displayMedium,),
                    SizedBox(height: 5,),
                    Text("+998913941881",style: TextStyle(fontSize: 16),),
                  ],
                ),
              ),
              DrawerItem(
                itemIcon: Icons.map_outlined,
                itemText: "Adresses",
                onTap: () {
                  
                },
              ),
              DrawerItem(
                itemIcon: Icons.favorite_border_rounded,
                itemText: "Favourite",
                onTap: () {
                  
                },
              ),
              DrawerItem(
                itemIcon: Icons.settings,
                itemText: "Setting",
                onTap: () {
                  
                },
              ),
              Spacer(),
              DrawerItem(
                itemIcon: Icons.logout_rounded,
                itemText: "Log out",
                onTap: () {
                  
                },
              ),
            ],
          ),
        ),
      );
  }
}