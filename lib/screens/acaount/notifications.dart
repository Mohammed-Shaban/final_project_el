import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'الاشعارات',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Text(
              'الاشعارات الجديدة',
              style:
                  GoogleFonts.cairo(fontSize: 14.sp, color: Color(0xff001327)),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Expanded(
            child: Container(
              width: 428.w,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.r),
                  topLeft: Radius.circular(20.r),
                ),
                color: Colors.white60,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 3,
                      child: Container(
                        width: 327.w,
                        height: 87.h,
                        decoration:  BoxDecoration(
                            color: Colors.white,
                            // borderRadius: BorderRadius.circular(15),
                            border: Border(
                              right: BorderSide(
                                color: const Color(0xffC3D61B),
                                width: 6.0.r,
                              ),
                            )),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 35.w,vertical: 14.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'تم الدفع بنجاح',
                                    style: GoogleFonts.cairo(
                                      color: const Color(0xff001327),
                                      fontSize: 14.sp
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '20-06-2022',
                                    style: GoogleFonts.cairo(
                                        color: const Color(0xffAFAFAF),
                                        fontSize: 12.sp
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'نص الاشعار',
                                style: GoogleFonts.cairo(
                                    color: const Color(0xff707070),
                                    fontSize: 14.sp
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 4,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
