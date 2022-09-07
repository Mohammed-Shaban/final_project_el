import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'الدعم',
          style: GoogleFonts.cairo(
            color: const Color(0xff0E4C75),
            fontSize: 17.sp,
          ),
        ),
        iconTheme: null,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/about.png',
            height: 146.73.h,
            width: 146.73.w,
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 53.h),
            height: 640.h,
            width: 428.w,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '*',
                      style: GoogleFonts.cairo(
                          color: Color(0xffC3D61B), fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'رقم جوال',
                            style: GoogleFonts.cairo(
                                color: Color(0xff23253A), fontSize: 14.sp),
                          ),
                          Text(
                            '+059725955555',
                            style: GoogleFonts.cairo(
                                color: Color(0xff707070), fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 41.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '*',
                      style: GoogleFonts.cairo(
                          color: Color(0xffC3D61B), fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'للإجابة على الأسئلة والاستفسارات التواصل عبر الايميل  ',
                            style: GoogleFonts.cairo(
                                color: Color(0xff23253A), fontSize: 14.sp),
                          ),
                          Text(
                            'Support@otlob.com',
                            style: GoogleFonts.cairo(
                                color: Color(0xff707070), fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 41.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '*',
                      style: GoogleFonts.cairo(
                          color: Color(0xffC3D61B), fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'للإجابة على الأسئلة والاستفسارات التواصل عبر الايميل  ',
                            style: GoogleFonts.cairo(
                                color: Color(0xff23253A), fontSize: 14.sp),
                          ),
                          Text(
                            'Support@otlob.com',
                            style: GoogleFonts.cairo(
                                color: Color(0xff707070), fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 41.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '*',
                      style: GoogleFonts.cairo(
                          color: Color(0xffC3D61B), fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'للإجابة على الأسئلة والاستفسارات التواصل عبر الايميل  ',
                            style: GoogleFonts.cairo(
                                color: Color(0xff23253A), fontSize: 14.sp),
                          ),
                          Text(
                            'Support@otlob.com',
                            style: GoogleFonts.cairo(
                                color: Color(0xff707070), fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
