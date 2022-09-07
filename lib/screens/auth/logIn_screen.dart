import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding:  EdgeInsets.symmetric(vertical: 69.h, horizontal: 28.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Image.asset(
                'images/maskgroup.png',
                height: 140.h,
                width: 372.w,
              ),
              SizedBox(
                height: 27.h,
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 3),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffAFAFAF),
                      width: 1.0, // This would be the width of the underline
                    ),
                  ),
                ),
                child: Text(
                  'العائلة ماركت',
                  style: GoogleFonts.cairo(
                    color: const Color(0xffC3D61B),
                    fontSize: 17.sp,
                  ),
                ),
              ),
              SizedBox(height: 27.h),
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
              SizedBox(height: 26.h),
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
                height: 34.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: const Color(0xff0E4C75),
                      value: true,
                      onChanged: (bool? value) {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  Text(
                    'تذكرني',
                    style: GoogleFonts.cairo(
                        fontSize: 17.sp, color: const Color(0xff0E4C75)),
                  ),

                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/navigation_bar_screen');
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
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ForgetPassword_screen');
                  },
                  child: Text(
                    'نسيت كامة السر ؟',
                    style: GoogleFonts.cairo(
                      color: const Color(0xff0E4C75),
                    ),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_up_screen');
                  },
                  child: Text(
                    'تسجيل مستخدم جديد',
                    style: GoogleFonts.cairo(
                      color: Color(0xff0E4C75),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
