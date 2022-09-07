import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/app_controller.dart';

class AcountScreen extends StatefulWidget {
  const AcountScreen({Key? key}) : super(key: key);

  @override
  State<AcountScreen> createState() => _AcountScreenState();
}

class _AcountScreenState extends State<AcountScreen> {
  String _string = 'm';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Card(
            child: Container(
              margin: EdgeInsets.only(bottom: 0, top: 0),
              // height: 95.h,
              // width: 384.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.5.r),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage('images/v2.png'),
                    radius: 40.r,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'اية سامي انشاصي ',
                        style: GoogleFonts.cairo(
                          color: Color(0xff001327),
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        'غزة - الشيخ رضوان',
                        style: GoogleFonts.cairo(
                          color: Colors.grey,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/edit_account_screen');
                    },
                    icon: const Icon(
                      Icons.edit_calendar,
                      size: 21,
                      color: Color(0xff0E4C75),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/edit_account_screen');
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.edit,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'تعديل بيانات حسابي',
                            style: GoogleFonts.cairo(
                                color: Color(0xff001327), fontSize: 14.sp),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/edit_account_screen');
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/addresses_screen');
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'العناوين',
                            style: GoogleFonts.cairo(
                                color: const Color(0xff001327),
                                fontSize: 14.sp),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/addresses_screen');
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/notifications_screen');
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.notification_important_rounded,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'الاشعارات',
                            style: GoogleFonts.cairo(
                                color: Color(0xff001327), fontSize: 14.sp),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/notifications_screen');
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/around_screen');
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.info_outlined,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'حول',
                            style: GoogleFonts.cairo(
                                color: Color(0xff001327), fontSize: 14.sp),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/around_screen');
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/payment_methods_screen');
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.credit_card,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'طرق الدفع',
                            style: GoogleFonts.cairo(
                                color: const Color(0xff001327),
                                fontSize: 14.sp),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/payment_methods_screen');
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/support_screen');
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.call,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'الدعم',
                            style: GoogleFonts.cairo(
                                color: const Color(0xff001327),
                                fontSize: 14.sp),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/support_screen');
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    Column(
                      children: [
                        Text('اللغة',style: GoogleFonts.cairo(),),
                        Row(
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: ListTile(
                                title: Text(
                                  'عربي',
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
                                  'English',
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
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, '/login_screen');
                        Provider.of<AppController>(context, listen: false)
                            .setselected(2);
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.logout,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'تسحيل الخروج',
                            style: GoogleFonts.cairo(
                                color: Color(0xff001327), fontSize: 14.sp),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/login_screen');
                              Provider.of<AppController>(context, listen: false)
                                  .setselected(2);
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
