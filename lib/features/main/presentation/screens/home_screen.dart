import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juarain_academy_app_ui/core/helper/layout_helper.dart';
import 'package:juarain_academy_app_ui/core/res/color.dart';
import 'package:juarain_academy_app_ui/core/res/svg.dart';
import 'package:juarain_academy_app_ui/features/main/presentation/tabs/dashboard_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => const HomeScreenImpl();
}

class HomeScreenImpl extends StatefulWidget {
  const HomeScreenImpl({super.key});

  @override
  State<HomeScreenImpl> createState() => _HomeScreenImplState();
}

class _HomeScreenImplState extends State<HomeScreenImpl> {
  final List<NavBarItem> _navBarItems = [
    NavBarItem(title: 'Beranda', icon: SVG.icCommonDashboard, isActive: true),
    NavBarItem(title: 'Cari', icon: SVG.icCommonSearch),
    NavBarItem(title: 'Promo', icon: SVG.icCommonPromo),
    NavBarItem(title: 'Aktifitas', icon: SVG.icCommonActivity),
    NavBarItem(title: 'Profil', icon: SVG.icCommonAccount),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR.white,
      body: Stack(
        children: [
          const DashboardTab(),
          _buildBottomNavBar(),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: sizeFigma(context, 15)),
        decoration: BoxDecoration(
          color: COLOR.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 2,
              color: COLOR.primary.withValues(alpha: 0.5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _navBarItems.map((item) => _buildNavBarItem(item)).toList(),
        ),
      ),
    );
  }

  Widget _buildNavBarItem(NavBarItem item) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          item.icon,
          width: sizeFigma(context, 20),
          height: sizeFigma(context, 20),
        ),
        SizedBox(height: sizeFigma(context, 3)),
        Text(
          item.title,
          style: GoogleFonts.inter(
            fontSize: sizeFigma(context, 10),
            color: item.isActive
                ? COLOR.primary
                : const Color(0xff999999).withValues(alpha: 0.50),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class NavBarItem {
  final String title;
  final String icon;
  final bool isActive;

  NavBarItem({
    required this.title,
    required this.icon,
    this.isActive = false,
  });
}
