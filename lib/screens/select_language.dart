import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quotex/core/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:quotex/screens/start_screen.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                top: size.height * 0.5,
                child: Image.asset(
                  'assets/images/phone.png',
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: size.width * 0.264,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0.288 * size.width),
                    child: const SizedBox(),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0.09 * size.width),
                    child: AutoSizeText(
                      'Welcome to quotex!'.toUpperCase(),
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: AppColors.mainWhite, fontSize: 170),
                    ),
                  ),
                  SizedBox(
                    height: 0.012 * size.height,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0.19 * size.width),
                    child: AutoSizeText(
                      'What language do you want to continue working in?',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.textLightSecondary, fontSize: 111),
                    ),
                  ),
                  SizedBox(
                    height: 0.012 * size.height,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => StartScreen(
                          isRussian: true,
                        ),
                      ),
                    ),
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 0.25 * size.width),
                      height: 0.0736 * size.height,
                      width: 0.49 * size.width,
                      padding: EdgeInsets.only(
                          right: 0.044 * size.width,
                          top: 0.005 * size.height,
                          bottom: 0.005 * size.height),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.mainGreenDark,
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(12)),
                            child: Image.asset(
                              'assets/images/ru.png',
                            ),
                          ),
                          Spacer(),
                          AutoSizeText(
                            'Russian'.toUpperCase(),
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: AppColors.mainWhite, fontSize: 111),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.012 * size.height,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => StartScreen(
                          isRussian: false,
                        ),
                      ),
                    ),
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 0.25 * size.width),
                      height: 0.0736 * size.height,
                      width: 0.49 * size.width,
                      padding: EdgeInsets.only(
                          right: 0.044 * size.width,
                          top: 0.005 * size.height,
                          bottom: 0.005 * size.height),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.mainGreenDark,
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(12)),
                            child: Image.asset(
                              'assets/images/en.png',
                            ),
                          ),
                          Spacer(),
                          AutoSizeText(
                            'English'.toUpperCase(),
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: AppColors.mainWhite, fontSize: 111),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
