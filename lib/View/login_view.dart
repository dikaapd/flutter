import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:kemahasiswaan/constant/app_color.dart';
import 'package:kemahasiswaan/constant/app_text.dart';
import 'package:kemahasiswaan/widget/custom_elevated_button.dart';
import 'package:kemahasiswaan/widget/custom_textfield.dart';
import 'package:kemahasiswaan/view/register_view.dart';

import '../Dashboard/dashboard_proposal.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  SizedBox _body(BuildContext context) {
    return SizedBox(
      height: context.height * 1,
      width: context.width * 1,
      child: SingleChildScrollView(
        child: Column(
          children: [
            context.emptySizedHeightBoxLow3x,
            context.emptySizedHeightBoxLow3x,
            context.emptySizedHeightBoxLow3x,
            context.emptySizedHeightBoxLow3x,
            context.emptySizedHeightBoxLow3x,
            topImage(context),
            context.emptySizedHeightBoxLow3x,
            topText(context),
            context.emptySizedHeightBoxLow3x,
            CustomTextField(
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.email,
              prefixIcon: const Icon(
                Icons.email,
                color: AppColors.loginColor,
              ),
            ),
            context.emptySizedHeightBoxLow,
            CustomTextField(
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.password,
              prefixIcon: const Icon(
                Icons.lock,
                color: AppColors.loginColor,
              ),
            ),
            context.emptySizedHeightBoxLow,
            context.emptySizedHeightBoxLow,
            context.emptySizedHeightBoxLow,
            context.emptySizedHeightBoxLow,
            CustomElevatedButton(
              borderRadius: 20,
              color: AppColors.loginColor,
              height: context.height * 0.07,
              width: context.width * 0.6,
              child: Text(
                AppText.login.toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashboardProposal()));
              },
            ),
            context.emptySizedHeightBoxLow3x,
            const Text(AppText.or),
            bottomText(context),
          ],
        ),
      ),
    );
  }

  SizedBox topImage(BuildContext context) {
    return SizedBox(
      height: context.height * 0.2,
      child: Image.asset('assets/introduction_animation/logo.png'),
    );
  }

  Text topText(BuildContext context) {
    return Text(
      AppText.login.toUpperCase(),
      style: context.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
    );
  }

  SizedBox bottomText(BuildContext context) {
    return SizedBox(
      width: context.width * 0.7,
      height: context.height * 0.08,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            AppText.account,
          ),
          TextButton(
            child: const Text(
              AppText.registernow,
              style: TextStyle(color: AppColors.loginColor),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterView()),
              );
            },
          )
        ],
      ),
    );
  }
}
