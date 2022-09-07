import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: null,
        title: Text(
          'إعادة تعيين كلمة المرور',
          style: GoogleFonts.cairo(
            color: const Color(0xff0E4C75),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff0E4C75),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 50.h),
        child: Column(
          children: [
            Text(
              'كلمة المرور',
              style: GoogleFonts.cairo(
                fontSize: 17.sp,
                color: const Color(0xff0E4C75),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              // style: GoogleFonts.cairo(color: Color(0xffAFAFAF)),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: '******',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28.r),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'تأكيد كلمة المرور',
              style: GoogleFonts.cairo(
                fontSize: 17.sp,
                color: const Color(0xff0E4C75),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              // style: GoogleFonts.cairo(color: Color(0xffAFAFAF)),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: '******',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28.r),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login_screen');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(361.w, 59.h),
                  primary: Color(0xff0E4C75),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29.5.r)),
                  elevation: 5),
              child: Text(
                'تسجيل دخول',
                style: GoogleFonts.cairo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
