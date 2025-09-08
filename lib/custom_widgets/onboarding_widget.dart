import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.baseBackgroundColor,
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 30,
            left: 0,
            child: Transform.scale(
              scale: 1.5,
              child: Opacity(
                opacity: 0.4,
                child: Image.asset(
                  'assets/images/onboarding_bg.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/onboarding_layer_1.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/onboarding_layer_2.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),


          //ei portion ta change hobe right to left diye
          Positioned(
            top: 50,
            left: 0,
            child: Transform.scale(
              scale: 0.9,
              child: Image.asset(
                'assets/images/onboarding_3.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //-----------------//
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 25),
              height: MediaQuery.sizeOf(context).height * 0.58,
              decoration: BoxDecoration(
                color: AppColors.onboardingBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //------ekhane page indicator hobe-------------//

                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Text(
                            "Welcome to BANGr",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1.5,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Your music, your way. Discover artists, explore playlists, and BANG your favorite songs to the top.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),

                        ]
                      ),
                    )
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          gradient: AppColors.defaultGradient,
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            //ekhane tap korle, image change hobe, indicator change hobe, text change hobe
                          },
                          child: const Icon(
                            Icons.keyboard_double_arrow_right_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Image.asset('assets/images/onboarding_shape.png'),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
