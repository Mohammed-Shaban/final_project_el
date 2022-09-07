import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text(
          'اعادة تعيين كلمة السر',
          style: GoogleFonts.cairo(
            color: Color(0xff0E4C75)
          ),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: null,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff0E4C75),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
        child: Column(
          children: [
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
              height: 40.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/VerificationForget_screen');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(361.w, 59.h),
                  primary: Color(0xff0E4C75),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29.5.r)),
                  elevation: 5),
              child: Text(
                'ارسال',
                style: GoogleFonts.cairo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
