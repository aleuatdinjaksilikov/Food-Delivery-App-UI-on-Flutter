import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/shared/app_button.dart';

class LocationAccessPage extends StatelessWidget {
  const LocationAccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(90)),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/3861/3861399.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 50,),
            AppButton(btnText: "ACCESS LOCATION", onTap: (){
        
            }),
            SizedBox(height: 25,),
            Text("DFOOD WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP",style: TextStyle(fontSize: 16,fontFamily: "sen"),textAlign: .center,)
          ],
        ),
      ),
    );
  }
}
