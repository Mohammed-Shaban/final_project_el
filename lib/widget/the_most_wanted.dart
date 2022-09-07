import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LatesProducts extends StatelessWidget {
   LatesProducts({Key? key,this.margin =0 }) : super(key: key);
  double margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: margin,top: 10,right: 20.w,left: 20.w ),
      height: 95.h,
      width: 384.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.5.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage('images/sildet.png'),
              radius: 30.r,
            ),
            SizedBox(width: 20.w,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'جبنة كيري',
                  style: GoogleFonts.cairo(
                    color: Color(0xff0E4C75),
                    fontSize: 12.sp,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'السعر',
                      style: GoogleFonts.cairo(
                        color: const Color(0xff0E4C75),
                        fontSize: 10.sp,
                      ),
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Text(
                      '500',
                      style: GoogleFonts.cairo(
                        color: const Color(0xffC3D61B),
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'معدل التقييم',
                      style: GoogleFonts.cairo(
                        color: const Color(0xff0E4C75),
                        fontSize: 10.sp,
                      ),
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Text(
                      '50%',
                      style: GoogleFonts.cairo(
                        color: const Color(0xffC3D61B),
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                size: 21,
                color: Color(0xff0E4C75),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
