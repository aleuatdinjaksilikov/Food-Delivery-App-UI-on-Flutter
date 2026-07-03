import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/navigation_extension.dart';
import 'package:food_delivery_app_ui/shared/app_button.dart';
import 'package:food_delivery_app_ui/shared/app_circle_container.dart';
import 'package:food_delivery_app_ui/shared/app_field.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({super.key});

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  bool _isChecked = false;

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
                    "Log In",
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
                        rememberMeSection(),
                        SizedBox(height: 15),
                        AppButton(btnText: "LOG IN", onTap: () {context.toAccessLocation();}),
                        SizedBox(height: 15),
                        haveAnAccountSection(),
                        SizedBox(height: 25),
                        Column(
                          children: [
                            Text("OR", style: TextStyle(fontFamily: "sen")),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: .spaceEvenly,
                              children: [
                                AppCircleContainer(
                                  onTap: () {},
                                  bgColor: Color(0xFF395998),
                                  radius: 35,
                                  icon: Icons.facebook,
                                ),
                                AppCircleContainer(
                                  onTap: () {},
                                  bgColor: Color(0xFF169CE8),
                                  radius: 35,
                                  icon: Icons.telegram,
                                ),
                                AppCircleContainer(
                                  onTap: () {},
                                  bgColor: Color(0xFF1B1F2F),
                                  radius: 35,
                                  icon: Icons.apple,
                                ),
                              ],
                            ),
                          ],
                        ),
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

  Row haveAnAccountSection() {
    return Row(
      mainAxisAlignment: .center,
      children: [
        Text("Don’t have an account?", style: TextStyle(fontFamily: "sen")),
        SizedBox(width: 5),
        TextButton(
          onPressed: () {
            context.toSignUp();
          },
          child: Text(
            "SIGN UP",
            style: TextStyle(
              fontFamily: "sen",
              color: Color(0xFFFF7622),
              fontWeight: .bold,
            ),
          ),
        ),
      ],
    );
  }

  Row rememberMeSection() {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: _isChecked,
              fillColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.orange;
                }
                return Colors.white;
              }),
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
            ),
            Text(
              "Remember me",
              style: TextStyle(fontFamily: "sen", color: Color(0xFF7E8A97)),
            ),
          ],
        ),
        TextButton(
          onPressed: () {context.toForgotPassword();},
          child: Text(
            "Forgot Password",
            style: TextStyle(fontFamily: "sen", color: Color(0xFFFF7622)),
          ),
        ),
      ],
    );
  }
}
