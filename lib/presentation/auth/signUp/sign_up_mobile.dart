import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/shared/app_button.dart';
import 'package:food_delivery_app_ui/shared/app_circle_container.dart';
import 'package:food_delivery_app_ui/shared/app_field.dart';

class SignUpMobile extends StatelessWidget {
  const SignUpMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121223),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  const Text(
                    "Sing Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "sen",
                      fontWeight: .bold,
                    ),
                  ),
                  const Text(
                    "Please sign up to get started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "sen",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsGeometry.all(16),
                    child: Column(
                      children: [
                        AppField(
                          header: "EMAIL",
                          hintText: "example@gmail.com",
                          isPassword: false,
                        ),
                        SizedBox(height: 15),
                        AppField(
                          header: "PASSWORD",
                          hintText: "******",
                          isPassword: true,
                        ),
                        SizedBox(height: 15),
                        // rememberMeSection(),
                        SizedBox(height: 15,),
                        AppButton(btnText: "LOG IN", onTap: (){
                
                        }),
                        SizedBox(
                          height: 15,
                        ),
                        // haveAnAccountSection(),
                        SizedBox(height: 25,),
                        Column(
                          children: [
                            Text("OR",style: TextStyle(fontFamily: "sen"),),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: .spaceEvenly,
                              children: [
                                AppCircleContainer(onTap: (){},bgColor: Color(0xFF395998), radius: 35, icon: Icons.facebook),
                                AppCircleContainer(onTap: (){},bgColor: Color(0xFF169CE8), radius: 35, icon: Icons.telegram),
                                AppCircleContainer(onTap: (){},bgColor: Color(0xFF1B1F2F), radius: 35, icon: Icons.apple),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}