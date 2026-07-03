import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/shared/app_button.dart';
import 'package:food_delivery_app_ui/shared/app_field.dart';
import 'package:go_router/go_router.dart';

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
            child: Stack(
              children: [
                Center(
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

                Positioned(
                  top: 50,
                  left: 20,
                  child: InkWell(
                    customBorder: CircleBorder(),
                    onTap: () {
                      context.pop();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
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
                          header: "NAME",
                          hintText: "John Doe",
                          isPassword: false,
                        ),
                        SizedBox(height: 15),
                        AppField(
                          header: "EMAIL",
                          hintText: "example@gmail.com",
                          isPassword: false,
                        ),
                        SizedBox(height: 15),
                        AppField(
                          header: "PASSWORD",
                          hintText: "*****",
                          isPassword: true,
                        ),
                        SizedBox(height: 15),
                        AppField(
                          header: "RE-TYPE PASSWORD",
                          hintText: "*****",
                          isPassword: true,
                        ),
                        SizedBox(height: 15),
                        AppButton(btnText: "SIGN UP", onTap: () {}),
                        SizedBox(height: 15),
                      ],
                    ),
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
