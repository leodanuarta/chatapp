import 'package:chatapp/common/extension/custom_theme_extension.dart';
import 'package:chatapp/common/widgets/custom_icon_button.dart';
import 'package:chatapp/features/auth/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({
    super.key,
    required this.verificationId,
    required this.phoneNumber,
  });
  final String verificationId;
  final String phoneNumber;

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late TextEditingController codeController;

  @override
  void initState() {
    codeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text(
          'Verify your number',
          style: TextStyle(
            color: context.theme.authAppbarTextColor,
          ),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Icons.more_vert,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(color: context.theme.greyColor),
                  children: [
                    const TextSpan(
                      text:
                          "You've tried to register +6208123456789. before requesting a SMS or call with your code. ",
                    ),
                    TextSpan(
                      text: "Wrong number? ",
                      style: TextStyle(
                        color: context.theme.blueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: CustomTextField(
                // controller: codeController,
                hintText: '- - -  - - - ',
                fontSize: 30,
                autoFocus: true,
                keyboardType: TextInputType.number,
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Enter 6 digit code',
              style: TextStyle(
                color: context.theme.greyColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.message,
                  color: context.theme.greyColor,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Resend SMS',
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              color: context.theme.greyColor!.withOpacity(0.2),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.phone, color: context.theme.greyColor),
                const SizedBox(width: 20),
                Text(
                  'Call Me',
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
