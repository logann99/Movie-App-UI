import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/components/custom_outline.dart';
import 'package:movie_app/constants.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      body: SizedBox(
        width: screenWidth,
        height: screenHight,
        child: Stack(children: [
          Positioned(
            top: screenHight * 0.1,
            left: -88,
            child: Container(
              height: 166,
              width: 166,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kPinkColor,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 200,
                  sigmaY: 200,
                ),
                child: const SizedBox(
                  height: 166,
                  width: 166,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHight * 0.3,
            right: -100,
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kGreenColor,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 200,
                  sigmaY: 200,
                ),
                child: const SizedBox(
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHight * 0.07,
                ),
                CustomOutline(
                  strokeWidth: 4,
                  radius: screenWidth * 0.8,
                  padding: const EdgeInsets.all(
                    4,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Constants.kPinkColor,
                      Constants.kPinkColor.withOpacity(0),
                      Constants.kGreenColor.withOpacity(0.1),
                      Constants.kGreenColor,
                    ],
                    stops: const [0.2, 0.4, 0.6, 1],
                  ),
                  width: screenWidth * 0.8,
                  height: screenWidth * 0.8,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/img-onboarding.png',
                        ),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHight * 0.09,
                ),
                Text(
                  'Watch Movies in \n Virtual Reality',
                  style: TextStyle(
                    fontSize: screenHight <= 660 ? 18 : 34,
                    color: Constants.kWhiteColor.withOpacity(
                      0.8,
                    ),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: screenHight * 0.05,
                ),
                Text(
                  'Download and Watch Offline in \n Whenever You Are',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenHight <= 660 ? 12 : 16,
                    color: Constants.kWhiteColor.withOpacity(
                      0.8,
                    ),
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
