import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quotex/core/colors.dart';
import 'package:quotex/core/widget/logo.dart';

class SurveyScreenThird extends StatefulWidget {
  final bool isRussian;

  const SurveyScreenThird({
    super.key,
    required this.isRussian,
  });

  @override
  State<SurveyScreenThird> createState() => _SurveyScreenFirstState();
}

class _SurveyScreenFirstState extends State<SurveyScreenThird> {
  int selectedIndex = -1;

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Spacer(
                      flex: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * (0.073 - 0.04),
                      ),
                      child: const LogoWidget(),
                    ),
                    const Spacer(
                      flex: 20,
                    ),
                    Container(
                      height: 0.087 * size.height,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.containerGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: AutoSizeText(
                        (widget.isRussian)
                            ? 'ВОПРОС 3/3'
                            : 'question 3/3'.toUpperCase(),
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppColors.backgroundColor,
                              fontSize: 83,
                            ),
                      ),
                    ),
                    const Spacer(
                      flex: 35,
                    ),
                    Container(
                      height: 0.14 * size.height,
                      child: AutoSizeText.rich(
                        TextSpan(
                          text: (widget.isRussian)
                              ? "Откуда узнали".toUpperCase()
                              : 'Where did you find out'.toUpperCase(),
                          children: [
                            TextSpan(
                              text: (widget.isRussian)
                                  ? " о нашем проекте?".toUpperCase()
                                  : ' about our project?'.toUpperCase(),
                              style: textTheme.bodyLarge?.copyWith(
                                  color: AppColors.mainWhite,
                                  fontSize: 100,
                                  height: 0.6),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: textTheme.bodyLarge?.copyWith(
                            color: AppColors.textGreen, fontSize: 100),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0.1464 * size.width),
                      child: AutoSizeText(
                        (widget.isRussian)
                            ? "(ВЫБЕРИТЕ ОДИН ИЗ ВАРИАНТОВ)"
                            : '(You need to choose one of the options)'
                                .toUpperCase(),
                        maxLines: 1,
                        style: textTheme.bodyLarge?.copyWith(
                            color: AppColors.textLightSecondary, fontSize: 64),
                      ),
                    ),
                    const Spacer(
                      flex: 8,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 0.1 * size.width),
                  children: [
                    SelectRow(
                        isSelected: selectedIndex == 0 ? true : false,
                        text: (widget.isRussian)
                            ? 'Youtube'.toUpperCase()
                            : 'Youtube'.toUpperCase(),
                        onTap: () {
                          setState(() {
                            if (selectedIndex == 0) {
                              selectedIndex = -1;
                            } else {
                              selectedIndex = 0;
                            }
                          });
                        }),
                    SelectRow(
                      isSelected: selectedIndex == 1 ? true : false,
                      text: (widget.isRussian)
                          ? 'Социальные сети'.toUpperCase()
                          : 'social media'.toUpperCase(),
                      onTap: () => setState(() {
                        if (selectedIndex == 1) {
                          selectedIndex = -1;
                        } else {
                          selectedIndex = 1;
                        }
                      }),
                    ),
                    SelectRow(
                      isSelected: selectedIndex == 2 ? true : false,
                      text: (widget.isRussian)
                          ? 'Реклама в интернете'.toUpperCase()
                          : 'internet advertising'.toUpperCase(),
                      onTap: () => setState(() {
                        if (selectedIndex == 2) {
                          selectedIndex = -1;
                        } else {
                          selectedIndex = 2;
                        }
                      }),
                    ),
                    SelectRow(
                      isSelected: selectedIndex == 3 ? true : false,
                      text: (widget.isRussian)
                          ? 'Другое'.toUpperCase()
                          : 'other'.toUpperCase(),
                      onTap: () => setState(() {
                        if (selectedIndex == 3) {
                          selectedIndex = -1;
                        } else {
                          selectedIndex = 3;
                        }
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectRow extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function onTap;

  const SelectRow(
      {super.key,
      required this.isSelected,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: SizedBox(
        height: 0.08 * MediaQuery.of(context).size.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(
                0.018 * MediaQuery.of(context).size.width,
              ),
              decoration: const BoxDecoration(
                color: AppColors.mainWhite,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: 0.0464 * MediaQuery.of(context).size.width,
                  width: 0.0464 * MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: (isSelected) ? null : AppColors.mainWhite,
                    gradient: (isSelected)
                        ? const LinearGradient(
                            colors: [
                              AppColors.mainGreenDark,
                              AppColors.gradientGreen,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )
                        : null,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 0.026 * MediaQuery.of(context).size.width,
            ),
            AutoSizeText(
              text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.mainWhite,
                    fontSize: 111,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
