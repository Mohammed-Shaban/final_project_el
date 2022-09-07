import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/app_controller.dart';
import '../../widget/the_most_wanted.dart';
import 'navigation_bar_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 20.h,),
            CarouselSlider(
                items: [
                  Image.asset(
                    'images/sildet.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/sildet.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/sildet.png',
                    fit: BoxFit.cover,
                  ),
                ],
                options: CarouselOptions(
                  height: 197.h,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                )),
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'التصنيفات',
                    style: GoogleFonts.cairo(
                        color: Color(0xff0E4C75), fontSize: 17.sp),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Provider.of<AppController>(context, listen: false)
                            .setselected(0);
                      },
                      child: Text(
                        'عرض الكل',
                        style: GoogleFonts.cairo(
                            color: Color(0xffC3D61B), fontSize: 13.sp),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            SizedBox(
              height: 80,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 71 / 46,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/sub_cat_screen');
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 23.r,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'images/cat.png',
                              height: 22.h,
                              width: 33.w,
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            'عصائر',
                            style: GoogleFonts.cairo(
                                color: const Color(0xff0E4C75), fontSize: 11.sp),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'اخر المنتجات',
                    style: GoogleFonts.cairo(
                        color: const Color(0xff0E4C75), fontSize: 17.sp),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {

                      },
                      child: Text(
                        'عرض الكل',
                        style: GoogleFonts.cairo(
                            color: Color(0xffC3D61B), fontSize: 13.sp),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 10,
              //  shrinkWrap: true,
                itemBuilder: (context, index) {
                  return LatesProducts(
                    margin: 10,
                  );
                },
              ),
            ),
            SizedBox(
              height: 33.h,
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'المنتجات التي قد تعجبك',
                    style: GoogleFonts.cairo(
                        color: const Color(0xff0E4C75), fontSize: 17.sp),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                      },
                      child: Text(
                        'عرض الكل',
                        style: GoogleFonts.cairo(
                            color: Color(0xffC3D61B), fontSize: 13.sp),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 10,
                //  shrinkWrap: true,
                itemBuilder: (context, index) {
                  return LatesProducts(
                    margin: 10,
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
