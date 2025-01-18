import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juarain_academy_app_ui/core/helper/layout_helper.dart';
import 'package:juarain_academy_app_ui/core/res/color.dart';
import 'package:juarain_academy_app_ui/core/res/image.dart';
import 'package:juarain_academy_app_ui/core/res/svg.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({super.key});

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<String> sliderData = [
    IMAGE.imgDashboardSlider,
    IMAGE.imgDashboardWorkshop1,
  ];

  final serviceData = [
    {
      'title': 'Tips & Trik',
      'icon': SVG.icDashboardTipsAndTrick,
    },
    {
      'title': 'Lomba',
      'icon': SVG.icDashboardChampionship,
    },
    {
      'title': 'Mentor',
      'icon': SVG.icDashboardMentor,
    },
    {
      'title': 'Konsultasi',
      'icon': SVG.icDashboardConsultation,
    },
    {
      'title': 'Latihan',
      'icon': SVG.icDashboardTraining,
    },
  ];

  final recommendationData = [
    {
      'title': '4 Tips ESSAY Untuk Mahasiswa',
      'icon': IMAGE.imgDashboardRecommendation1,
    },
    {
      'title': 'Pengenalan Big Data Lengkap',
      'icon': IMAGE.imgDashboardRecommendation2,
    },
    {
      'title': 'Materi UI/UX Terlengkap Untuk Pemula',
      'icon': IMAGE.imgDashboardRecommendation3,
    },
    {
      'title': '10 Buku Terbaik 2024',
      'icon': IMAGE.imgDashboardRecommendation4,
    },
  ];

  final workshopData = [
    {
      'title': 'Workshop Pembinaan Lomba Bagi Mahasiswi Nasional',
      'description':
          'Pembinaan lomba untuk seluruh mahasiswa/i di Indonesia. Melalui kompetisi, mahasiswa dapat mengukur kemampuan dan keterampilan yang dimiliki serta mendapat apresiasi dari diri sendiri maupun orang lain.',
      'icon': IMAGE.imgDashboardWorkshop1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: sizeFigma(context, 10),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sizeFigma(context, 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: sizeFigma(context, 106),
                      height: sizeFigma(context, 53),
                      child: Image.asset(
                        IMAGE.imgCommonLogoPrimary,
                      ),
                    ),
                    SizedBox(
                      width: sizeFigma(context, 17),
                      height: sizeFigma(context, 19),
                      child: SvgPicture.asset(SVG.icCommonNotification),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeFigma(context, 3),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sizeFigma(context, 20),
                ),
                child: Text(
                  'Bersama Meraih Mimpi, Bersama Juarain Academy',
                  style: GoogleFonts.poppins(
                      fontSize: sizeFigma(context, 12),
                      color: COLOR.darkGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: sizeFigma(context, 15),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: sizeFigma(context, 20),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: sizeFigma(context, 13),
                  horizontal: sizeFigma(context, 17),
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: COLOR.primaryLight,
                  border: Border.all(color: COLOR.primary),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: sizeFigma(context, 16),
                      height: sizeFigma(context, 15),
                      child: SvgPicture.asset(
                        SVG.icCommonSearch,
                        color: COLOR.grey1,
                      ),
                    ),
                    SizedBox(
                      width: sizeFigma(context, 9),
                    ),
                    Expanded(
                      child: Text(
                        'Cari di sini',
                        style: GoogleFonts.inter(
                            fontSize: sizeFigma(context, 12),
                            color: COLOR.darkGrey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      width: sizeFigma(context, 9),
                    ),
                    SizedBox(
                      width: sizeFigma(context, 16),
                      height: sizeFigma(context, 15),
                      child: SvgPicture.asset(
                        SVG.icCommonMic,
                        color: COLOR.grey1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeFigma(context, 23),
              ),
              CarouselSlider.builder(
                controller: _controller,
                options: CarouselOptions(
                    height: sizeFigma(context, 141),
                    autoPlay: false,
                    viewportFraction: 1.0, // Shrinks each image slightly
                    enlargeCenterPage: false,
                    onPageChanged: (index, reason) {
                      setState(() => _current = index);
                    }),
                itemCount: sliderData.length,
                itemBuilder: (context, index, realIndex) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: sizeFigma(context, 20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        sliderData[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: sizeFigma(context, 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sliderData.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: _current == entry.key
                          ? sizeFigma(context, 25)
                          : sizeFigma(context, 5),
                      height: sizeFigma(context, 5),
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.red)
                              .withValues(
                                  alpha: _current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: sizeFigma(context, 6),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sizeFigma(context, 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Layanan',
                      style: GoogleFonts.poppins(
                          fontSize: sizeFigma(context, 12),
                          color: COLOR.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'semua',
                      style: GoogleFonts.poppins(
                        fontSize: sizeFigma(context, 10),
                        color: COLOR.primary,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeFigma(context, 17),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: sizeFigma(context, 20)),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: sizeFigma(context, 65),
                  ),
                  itemCount: 5, // Jumlah total item
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SvgPicture.asset(serviceData[index]['icon'] ?? ''),
                        SizedBox(
                          height: sizeFigma(context, 6),
                        ),
                        Text(
                          serviceData[index]['title'] ?? '',
                          style: GoogleFonts.poppins(
                            fontSize: sizeFigma(context, 10),
                            color: COLOR.darkGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: sizeFigma(context, 15),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sizeFigma(context, 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rekomendasi',
                      style: GoogleFonts.poppins(
                          fontSize: sizeFigma(context, 12),
                          color: COLOR.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeFigma(context, 11),
              ),
              SizedBox(
                height: sizeFigma(context, 132),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        left: index == 0 ? sizeFigma(context, 20) : 0,
                        right: index == (recommendationData.length - 1)
                            ? sizeFigma(context, 20)
                            : sizeFigma(context, 10),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffD9D9D9),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: sizeFigma(context, 100),
                            height: sizeFigma(context, 89),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  recommendationData[index]['icon'] ?? '',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sizeFigma(context, 100),
                            height: sizeFigma(context, 41),
                            child: Center(
                              child: Text(
                                recommendationData[index]['title'] ?? '',
                                style: GoogleFonts.poppins(
                                  fontSize: sizeFigma(context, 8),
                                  color: COLOR.black,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: recommendationData.length,
                ),
              ),
              SizedBox(
                height: sizeFigma(context, 11),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sizeFigma(context, 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Workshop',
                      style: GoogleFonts.poppins(
                          fontSize: sizeFigma(context, 12),
                          color: COLOR.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeFigma(context, 8),
              ),
              ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: sizeFigma(context, 20),
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: sizeFigma(context, 11),
                      vertical: sizeFigma(context, 13),
                    ),
                    decoration: BoxDecoration(
                      color: COLOR.primaryLight,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                workshopData[index]['title'] ?? '',
                                style: GoogleFonts.poppins(
                                    fontSize: sizeFigma(context, 13),
                                    color: COLOR.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: sizeFigma(context, 5),
                              ),
                              Text(
                                workshopData[index]['description'] ?? '',
                                style: GoogleFonts.poppins(
                                    fontSize: sizeFigma(context, 9),
                                    color: COLOR.darkGrey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: sizeFigma(context, 5),
                        ),
                        Container(
                          width: sizeFigma(context, 68),
                          height: sizeFigma(context, 67),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage(workshopData[index]['icon'] ?? ''),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: sizeFigma(context, 15),
                  );
                },
                itemCount: workshopData.length,
              ),
              SizedBox(
                height: sizeFigma(context, 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
