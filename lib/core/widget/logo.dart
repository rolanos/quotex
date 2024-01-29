import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quotex/core/colors.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        left: 0.11 * MediaQuery.of(context).size.width,
        right: 0.15 * MediaQuery.of(context).size.width,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 0.16 * MediaQuery.of(context).size.width,
          ),
          SizedBox(
            width: 0.0336 * MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 0.0576 * MediaQuery.of(context).size.height,
            child: AutoSizeText(
              'Quotex'.toUpperCase(),
              maxLines: 1,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                color: AppColors.mainWhite,
                fontWeight: FontWeight.w600,
                fontSize: 144,
              ),
            ),
          )
        ],
      ),
    );
  }
}
