import 'package:csinetagan/widgets/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(120),
            Image.asset(
              'assets/logo_inetagan.png',
              height: 80,
            ),
            const Gap(15),
            Image.asset(
              'assets/cs_image.png',
              height: 350,
            ),
            const Gap(20),
            const Text(
              "Bantu orang-orang untuk menikmati\nmomen-momen hebat dengan paket internet\npilihan terbaik kami",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.7,
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff6D6C6C),
              ),
            ),
            const Gap(60),
            ButtonPrimary(
              text: 'Get Started',
              onTap: () {
                Navigator.pushReplacementNamed(context, '/signin');
              },
            ),
            const Gap(30)
          ],
        ),
      ),
    );
  }
}
