import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final VoidCallback onTap;
  final IconData itemIcon;
  final String itemText;
  const DrawerItem({super.key, required this.onTap, required this.itemIcon, required this.itemText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      onTap: onTap,
      child: Card(
        color: Color(0xFFF6F8FA),
        margin: EdgeInsets.all(6),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                minRadius: 20,
                backgroundColor: Colors.white,
                child: Icon(itemIcon),
              ),
              const SizedBox(width: 5,),
              Text(itemText),
              Spacer(),
              Icon(size: 20,Icons.arrow_forward_ios_rounded,color: Colors.grey,)
            ],
          ),
        ),
      ),
    );
  }
}