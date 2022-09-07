import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationNewAccount extends StatefulWidget {
  const VerificationNewAccount({Key? key}) : super(key: key);

  @override
  State<VerificationNewAccount> createState() => _VerificationNewAccountState();
}

class _VerificationNewAccountState extends State<VerificationNewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: null,
        title: Text(
          'تأكيد',
          style: GoogleFonts.cairo(color: const Color(0xff0E4C75)),
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
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 50.h),
        child: Column(
          children: [
            Text(
              'أدخل الرمز المرسل ',
              style: GoogleFonts.cairo(
                color: const Color(0xff0E4C75),
                fontSize: 24.sp
              ),
            ),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100.h,
                  width: 60.w,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    // style: GoogleFonts.cairo(color: Color(0xffAFAFAF)),
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  width: 60.w,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    // style: GoogleFonts.cairo(color: Color(0xffAFAFAF)),
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  width: 60.w,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    // style: GoogleFonts.cairo(color: Color(0xffAFAFAF)),
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  width: 60.w,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    // style: GoogleFonts.cairo(color: Color(0xffAFAFAF)),
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, '/login_screen');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(361.w, 59.h),
                  primary: const Color(0xff0E4C75),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29.5.r)),
                  elevation: 5),
              child: Text(
                'تأكيد',
                style: GoogleFonts.cairo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
