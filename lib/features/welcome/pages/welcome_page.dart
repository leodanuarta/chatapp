import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111B21),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Image.asset(
                'assets/images/circle.png',
                color: const Color(0xFF00C6FF),
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Read Our',
                      style: TextStyle(
                        color: Color(0xFF8696A0),
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy. ',
                          style: TextStyle(
                            color: Color(0xFF00A884),
                          ),
                        ),
                        TextSpan(
                          text: 'Tap "Agree and continue" to accept the ',
                        ),
                        TextSpan(
                          text: 'Term of Service. ',
                          style: TextStyle(
                            color: Color(0xFF00A884),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 42,
                  width: MediaQuery.of(context).size.width - 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00C6FF),
                      foregroundColor: const Color(0xFF111B21),
                      splashFactory: NoSplash.splashFactory,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      'AGREE AND CONTINUE',
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Material(
                  color: const Color(0xFF182229),
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: const Color(0xFF09141A),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.language,
                            color: Color(0xFF00C6FF),
                          ),
                          SizedBox(width: 10),
                          Text('English'),
                          SizedBox(width: 10),
                          Icon(
                            Icons.keyboard_arrow_down,
                            // color: Color(0xFF00A884),
                            color: Color(0xFF00C6FF),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
