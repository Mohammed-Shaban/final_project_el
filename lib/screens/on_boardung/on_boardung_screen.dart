import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class onBoardungScreen extends StatefulWidget {
  const onBoardungScreen({Key? key}) : super(key: key);

  @override
  State<onBoardungScreen> createState() => _onBoardungScreenState();
}

class _onBoardungScreenState extends State<onBoardungScreen> {
  late PageController _pageController;
  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int index) {
                    setState(() {
                      _index = index;
                    });
                  },
                  children: [
                    Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                          ),
                          child: Image.asset(
                            'images/images.jfif',
                            height: 500.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          'تسوق من تطبيقك',
                          style: GoogleFonts.cairo(
                              color: Color(0xff1bacbd), fontSize: 30.sp),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                          ),
                          child: Image.asset(
                            'images/imageson1.jfif',
                            height: 500.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          'كافة المنتجات',
                          style: GoogleFonts.cairo(
                              color: Color(0xff498eaf), fontSize: 30.sp),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                          ),
                          child: Image.asset(
                            'images/imageson2.jfif',
                            height: 500.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          'خدمة توصيل سريعة',
                          style: GoogleFonts.cairo(
                              color: Color(0xff0d868f), fontSize: 30.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: _index == 0
                        ? Container(
                            margin:
                                EdgeInsets.only(right: _index == 3 ? 0.w : 7.w),
                            height: 7.h,
                            width: 18.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.5.r),
                              border: Border.all(color: const Color(0xff0d868f)),
                            ),
                          )
                        : Container(
                            margin:
                                EdgeInsets.only(right: _index == 3 ? 0.w : 7.w),
                            height: 7.h,
                            width: 7.w,
                            decoration: BoxDecoration(
                              color: const Color(0xff0d868f),
                              borderRadius: BorderRadius.circular(3.5.r),
                            ),
                          ),
                  ),
                  Container(
                    child: _index == 1
                        ? Container(
                            margin:
                                EdgeInsets.only(right: _index == 3 ? 0.w : 7.w),
                            height: 7.h,
                            width: 18.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.5.r),
                              border: Border.all(color: const Color(0xff0d868f)),
                            ),
                          )
                        : Container(
                            margin:
                                EdgeInsets.only(right: _index == 3 ? 0.w : 7.w),
                            height: 7.h,
                            width: 7.w,
                            decoration: BoxDecoration(
                              color: const Color(0xff0d868f),
                              borderRadius: BorderRadius.circular(3.5.r),
                            ),
                          ),
                  ),
                  Container(
                    child: _index == 2
                        ? Container(
                            margin:
                                EdgeInsets.only(right: _index == 3 ? 0.w : 7.w),
                            height: 7.h,
                            width: 18.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.5.r),
                              border: Border.all(color: const Color(0xff0d868f)),
                            ),
                          )
                        : Container(
                            margin:
                                EdgeInsets.only(right: _index == 3 ? 0.w : 7.w),
                            height: 7.h,
                            width: 7.w,
                            decoration: BoxDecoration(
                              color: const Color(0xff0d868f),
                              borderRadius: BorderRadius.circular(3.5.r),
                            ),
                          ),
                  ),

                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _pageController.previousPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeIn);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(40.w, 40.h),
                        primary: const Color(0xff0d868f),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                         _index != 2 ? _pageController.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeIn): Navigator.pushReplacementNamed(context, '/login_screen');
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(40.w, 40.h),
                        primary: const Color(0xff0d868f),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
