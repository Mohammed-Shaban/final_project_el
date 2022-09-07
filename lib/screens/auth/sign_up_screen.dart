import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _string = 'm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/maskgroup.png',
                  height: 140.h,
                  width: 372.w,
                ),
                SizedBox(
                  height: 20.h,
                ),
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
                  height: 12.h,
                ),
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
                  keyboardType: TextInputType.text,
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
                  height: 12.h,
                ),
                Text(
                  'المدينة',
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
                  height: 19.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 150.w,
                      child: ListTile(
                        title: Text(
                          'Mael',
                          style: GoogleFonts.cairo(
                            fontSize: 17.sp,
                            color: const Color(0xff0E4C75),
                          ),
                        ),
                        leading: Radio(
                          value: ' m',
                          groupValue: _string,
                          onChanged: (String? value) {
                            setState(() {
                              _string = value!;
                            });
                          },
                          activeColor: const Color(0xff0E4C75),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.w,
                      child: ListTile(
                        title: Text(
                          'Femal',
                          style: GoogleFonts.cairo(
                            fontSize: 17.sp,
                            color: const Color(0xff0E4C75),
                          ),
                        ),
                        leading: Radio(
                          value: 'f',
                          groupValue: _string,
                          onChanged: (String? value) {
                            setState(() {
                              _string = value!;
                            });
                          },
                          activeColor: const Color(0xff0E4C75),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/VerificationNewAccount_screen');
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(361.w, 59.h),
                      primary: const Color(0xff0E4C75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29.5.r)),
                      elevation: 5),
                  child: Text(
                    'تسجيل دخول',
                    style: GoogleFonts.cairo(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
