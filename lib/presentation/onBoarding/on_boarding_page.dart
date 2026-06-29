import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_ui/core/navigation/navigation_extension.dart';
import 'package:food_delivery_app_ui/core/navigation/routes.dart';
import 'package:food_delivery_app_ui/presentation/onBoarding/on_boarding_content.dart';
import 'package:food_delivery_app_ui/presentation/onBoarding/size_config.dart';
import 'package:food_delivery_app_ui/shared/app_button.dart';
import 'package:go_router/go_router.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color(0xFFFF7622),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: onBoardingContentList.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Expanded( 
                          child: SvgPicture.asset(
                            onBoardingContentList[i].image,
                          ),
                        ),
                        SizedBox(
                          height: (height >= 840) ? 60 : 30,
                        ),
                        Text(
                          onBoardingContentList[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "sen",
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          onBoardingContentList[i].desc,
                          style: TextStyle(
                            fontFamily: "sen",
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onBoardingContentList.length,
                      (int index) => _buildDots(
                        index: index,
                      ),
                    ),
                  ),
                  _currentPage + 1 == onBoardingContentList.length
                      ? Padding(
                          padding: const EdgeInsets.all(30),
                          child: AppButton(btnText: "Start", onTap: (){context.toLogin();}),
                          // child: ElevatedButton(
                          //   onPressed: () {},
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Colors.black,
                          //     shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(50),
                          //     ),
                          //     padding: (width <= 550)
                          //         ? const EdgeInsets.symmetric(
                          //             horizontal: 100, vertical: 20)
                          //         : EdgeInsets.symmetric(
                          //             horizontal: width * 0.2, vertical: 25),
                          //     textStyle:
                          //         TextStyle(fontSize: (width <= 550) ? 13 : 17),
                          //   ),
                          //   child: const Text("START"),
                          // ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            children: [
                              AppButton(btnText: "NEXT", onTap: (){
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                  );
                              }),
                              SizedBox(height: 5,),
                              TextButton(
                                onPressed: () {
                                  _controller.jumpToPage(2);
                                },
                                style: TextButton.styleFrom(
                                  elevation: 0,
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: (width <= 550) ? 13 : 17,
                                  ),
                                ),
                                child: const Text(
                                  "SKIP",
                                  style: TextStyle(color: Colors.black,fontFamily: "sen"),
                                ),
                              ),
                              
                            ],
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}