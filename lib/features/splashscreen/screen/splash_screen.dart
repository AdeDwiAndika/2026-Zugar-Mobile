import 'package:flutter/material.dart';
import 'package:zugar/core/constant/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/main');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGO
            Image.asset(
              'assets/logos/logo_withbg_white.png',
              width: 50,
              height: 50,
            ),
            Gap(12),
            // TEXT
            const Text(
              'Zugar',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
