import 'package:flutter/material.dart';
import 'package:quotex/core/colors.dart';
import 'package:quotex/core/widget/logo.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:quotex/screens/survey/survey_first.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key, required this.isRussian});

  final bool isRussian;

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Spacer(
                flex: 9,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * (0.073 - 0.04),
                ),
                child: const LogoWidget(),
              ),
              Spacer(
                flex: 6,
              ),
              Container(
                height: 0.14 * size.height,
                child: AutoSizeText.rich(
                  TextSpan(
                    text: (widget.isRussian)
                        ? "Спасибо за выбор".toUpperCase()
                        : 'Thank you for choosing'.toUpperCase(),
                    children: [
                      TextSpan(
                        text: (widget.isRussian)
                            ? " нашей платформы".toUpperCase()
                            : ' our platform'.toUpperCase(),
                        style: textTheme.bodyLarge?.copyWith(
                            color: AppColors.textGreen,
                            fontSize: 100,
                            height: 0.6),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: textTheme.bodyLarge
                      ?.copyWith(color: AppColors.mainWhite, fontSize: 100),
                ),
              ),
              Spacer(
                flex: 10,
              ),
              SizedBox(
                height: 0.09 * size.height,
                child: AutoSizeText(
                  (widget.isRussian)
                      ? "Для доступа ко всем функциям, пройдите небольшой опрос"
                          .toUpperCase()
                      : 'To get full access, take a short survey'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: textTheme.bodyMedium!.copyWith(
                    color: AppColors.textLightSecondary,
                    fontSize: 111,
                  ),
                ),
              ),
              Spacer(
                flex: 9,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SurveyScreenFirst(
                      isRussian: widget.isRussian,
                    ),
                  ),
                ),
                child: Container(
                  height: 0.074 * size.height,
                  width: size.width,
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 0.02 * size.height),
                  decoration: BoxDecoration(
                    color: AppColors.mainGreenDark,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child: Center(
                    child: AutoSizeText(
                      (widget.isRussian)
                          ? "ПРОЙТИ ОПРОС".toUpperCase()
                          : 'start a survey'.toUpperCase(),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: textTheme.bodyMedium!.copyWith(
                        color: AppColors.mainWhite,
                        fontSize: 75,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/comp.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
