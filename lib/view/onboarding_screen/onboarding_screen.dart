import 'package:flutter/material.dart';
import 'package:news_app/view/onboarding_screen/onboardingScreen_last.dart';
import 'package:news_app/view/onboarding_screen/onboarding_screen1.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController(initialPage: 0);

  int page = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: (page == 3)
          ? OnboardingScreenLast()
          : Stack(
              children: [
                Container(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        page = value;
                        print(page);
                      });
                    },
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      OnboardingScreenWidget(
                        image: 'assets/images/messi.jpg',
                        title: "Get the latest news from ",
                        subTitle: ' reliable resorce',
                      ),
                      OnboardingScreenWidget(
                        image: 'assets/images/car.jpg',
                        title: "Get the actual news from ",
                        subTitle: ' around the world',
                      ),
                      OnboardingScreenWidget(
                        image: 'assets/images/animal.jpg',
                        title: "Sports, politics, health, ",
                        subTitle: ' & anything',
                      ),
                      SizedBox()
                    ],
                  ),
                ),
                Positioned(
                  bottom: 2.h,
                  child: SizedBox(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SmoothPageIndicator(
                          controller: _pageController,
                          count: 3,
                          effect: SlideEffect(
                              dotColor: Colors.grey,
                              activeDotColor: Colors.orange,
                              dotWidth: 10,
                              dotHeight: 10),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Skip",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.orange)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: SizedBox(
                            width: size.width,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                _pageController.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeOut);
                              },
                              child: Text("Next"),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.orange),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ))),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
