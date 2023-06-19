// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chatapp/common/extension/custom_theme_extension.dart';
import 'package:chatapp/common/routes/routes.dart';
import 'package:chatapp/common/widgets/custom_elevated_button.dart';
import 'package:chatapp/features/welcome/widgets/language_button.dart';
import 'package:chatapp/features/welcome/widgets/privacy_and_terms.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  navigateToLoginPage(contex) {
    Navigator.of(contex).pushNamedAndRemoveUntil(
      Routes.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: context.theme.circleImageColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Welcome to ChatApp',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const PrivacyAndTerms(),
                CustomElevatedButton(
                  onPressed: () => navigateToLoginPage(context),
                  text: 'AGREE AND CONTINUE',
                ),
                const SizedBox(height: 50),
                const LanguageButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
