import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'طلباتي',
            style: GoogleFonts.cairo(
              fontSize: 17.sp,
              color: Color(0xff0E4C75),
            ),
          ),
          SizedBox(height: 53.h,),
          Expanded(child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                height: 116.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.5.r),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: const AssetImage('images/sildet.png'),
                      radius: 30.r,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              'التصنيف',
                              style: GoogleFonts.cairo(
                                color: const Color(0xff0E4C75),
                                fontSize: 10.sp,
                              ),
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Text(
                              'أجبان',
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
                              'التصنيف',
                              style: GoogleFonts.cairo(
                                color: const Color(0xff0E4C75),
                                fontSize: 10.sp,
                              ),
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Text(
                              'أجبان',
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
                              'التصنيف',
                              style: GoogleFonts.cairo(
                                color: const Color(0xff0E4C75),
                                fontSize: 10.sp,
                              ),
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Text(
                              'أجبان',
                              style: GoogleFonts.cairo(
                                color: const Color(0xffC3D61B),
                                fontSize: 11.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(53.w, 25.h),
                        primary: const Color(0xff0E4C75),
                      ),
                      child: Text('حالة الطلب',style: GoogleFonts.cairo(
                        fontSize: 9,

                      ),),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          )),
        ],
      ),
    );
  }
}
