import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
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
                        "Verification",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "sen",
                          fontWeight: .bold,
                        ),
                      ),
                      const Text(
                        "We have sent a code to your email",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "sen",
                        ),
                      ),
                      const Text(
                        "example@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: .bold,
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
                padding: const EdgeInsetsGeometry.all(16),
                child: Row(
                  mainAxisAlignment: .start,
                  children: [
                    
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
