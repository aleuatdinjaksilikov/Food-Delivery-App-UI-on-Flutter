import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/navigation_extension.dart';
import 'package:food_delivery_app_ui/shared/app_button.dart';
import 'package:food_delivery_app_ui/shared/app_field.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
                        "Forgot Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "sen",
                          fontWeight: .bold,
                        ),
                      ),
                      const Text(
                        "Please sign in to your existing account",
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
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding:  const EdgeInsetsGeometry.all(16),
                child: Column(
                  children: [
                    AppField(
                      header: "EMAIL",
                      hintText: "example@gmail.com",
                      isPassword: false,
                    ),
                    SizedBox(height: 25),
                    AppButton(btnText: "SEND CODE", onTap: () {
                      context.toOtpVerification();
                    }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}