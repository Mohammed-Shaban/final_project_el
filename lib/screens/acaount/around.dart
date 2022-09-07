import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Around extends StatelessWidget {
  const Around({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'حول',
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
            'images/aa.png',
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
                Text(
                  'تطبيق العائلة ماركت ',
                  style: GoogleFonts.cairo(
                    fontSize: 17.sp,
                    color: Color(0xff0E4C75),
                  ),
                ),
                SizedBox(height: 39.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '*',
                      style: GoogleFonts.cairo(
                          color: Color(0xffC3D61B), fontSize: 20),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text(
                          'لقد اعتدلت في حرارتك فلم تغلُ في بردك غلو الشتاء ، ولا في حَرِّك غلو الصيف ، فكنت جميلا في جوّك ، كما كنت جميلا في كل شيء من آثارك فليت الزمان كان ربيعا كله .',
                          style: GoogleFonts.cairo(
                              color: Color(0xff23253A), fontSize: 12.sp),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 41.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '*',
                      style: GoogleFonts.cairo(
                          color: Color(0xffC3D61B), fontSize: 20),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text(
                          'لقد اعتدلت في حرارتك فلم تغلُ في بردك غلو الشتاء ، ولا في حَرِّك غلو الصيف ، فكنت جميلا في جوّك ، كما كنت جميلا في كل شيء من آثارك فليت الزمان كان ربيعا كله .',
                          style: GoogleFonts.cairo(
                              color: Color(0xff23253A), fontSize: 12.sp),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 41.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '*',
                      style: GoogleFonts.cairo(
                          color: Color(0xffC3D61B), fontSize: 20),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text(
                          'لقد اعتدلت في حرارتك فلم تغلُ في بردك غلو الشتاء ، ولا في حَرِّك غلو الصيف ، فكنت جميلا في جوّك ، كما كنت جميلا في كل شيء من آثارك فليت الزمان كان ربيعا كله .',
                          style: GoogleFonts.cairo(
                              color: Color(0xff23253A), fontSize: 12.sp),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 41.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '*',
                      style: GoogleFonts.cairo(
                          color: Color(0xffC3D61B), fontSize: 20),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text(
                          'لقد اعتدلت في حرارتك فلم تغلُ في بردك غلو الشتاء ، ولا في حَرِّك غلو الصيف ، فكنت جميلا في جوّك ، كما كنت جميلا في كل شيء من آثارك فليت الزمان كان ربيعا كله .',
                          style: GoogleFonts.cairo(
                              color: Color(0xff23253A), fontSize: 12.sp),
                        ),
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
