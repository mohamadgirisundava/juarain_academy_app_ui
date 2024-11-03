import 'dart:async';

import 'package:flutter/material.dart';
import 'package:juarain_academy_app_ui/core/helper/layout_helper.dart';
import 'package:juarain_academy_app_ui/core/res/color.dart';
import 'package:juarain_academy_app_ui/core/res/image.dart';
import 'package:juarain_academy_app_ui/features/main/presentation/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) => const SplashScreenImpl();
}

class SplashScreenImpl extends StatefulWidget {
  const SplashScreenImpl({super.key});

  @override
  State<SplashScreenImpl> createState() => _SplashScreenImplState();
}

class _SplashScreenImplState extends State<SplashScreenImpl> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        _createPageRoute(),
      ),
    );
  }

  PageRouteBuilder _createPageRoute() {
    return PageRouteBuilder(
      pageBuilder: (_, animation, __) => const HomeScreen(),
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      transitionDuration: const Duration(milliseconds: 500),
      reverseTransitionDuration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          _buildLogo(),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: const BoxDecoration(
        gradient: GRADIENT.primaryGradient,
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: sizeFigma(context, 50),
      ),
      child: Center(
        child: Image.asset(IMAGE.imgCommonLogoWhite),
      ),
    );
  }
}
