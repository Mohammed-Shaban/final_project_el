import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAcount extends StatefulWidget {
  const EditAcount({Key? key}) : super(key: key);

  @override
  State<EditAcount> createState() => _EditAcountState();
}

class _EditAcountState extends State<EditAcount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
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
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 34.w),
          child: Column(
            children: [
              Image.asset(
                'images/account.png',
                height: 182.h,
                width: 376.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'الأسم',
                    style: GoogleFonts.cairo(
                      fontSize: 17.sp,
                      color: const Color(0xff0E4C75),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    // style: GoogleFonts.cairo(color: Color(0xffAFAFAF)),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: '-------------------',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    'العنوان',
                    style: GoogleFonts.cairo(
                      fontSize: 17.sp,
                      color: const Color(0xff0E4C75),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextField(
                    keyboardType: TextInputType.streetAddress,
                    // style: GoogleFonts.cairo(color: Color(0xffAFAFAF)),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: '------------------',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    'رقم الجوال',
                    style: GoogleFonts.cairo(
                      fontSize: 17.sp,
                      color: const Color(0xff0E4C75),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    // style: GoogleFonts.cairo(color: Color(0xffAFAFAF)),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: '05* * *** ***',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 52.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(361.w, 59.h),
                        primary: const Color(0xff0E4C75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29.5.r)),
                        elevation: 5),
                    child: Text(
                      'تعديل',
                      style: GoogleFonts.cairo(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
