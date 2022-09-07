import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'الطلبات الفعالة حاليا',
                  style: GoogleFonts.cairo(
                    color: const Color(0xff0E4C75),
                    fontSize: 17.sp,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(75.w, 29.h),
                    primary: Color(0xffCB0000),
                  ),
                  child: Text(
                    'حذف الجميع',
                    style: GoogleFonts.cairo(
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 0, top: 0),
                    height: 95.h,
                    width: 384.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.5.r),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              const AssetImage('images/sildet.png'),
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
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _counter++;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(24.w, 24.h),
                                primary: const Color(0xffC3D61B),
                              ),
                              child: Text(
                                '+',
                                style: GoogleFonts.cairo(),
                              ),
                            ),
                            Text(
                              '$_counter',
                              style: GoogleFonts.cairo(),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (_counter != 0) {
                                    _counter--;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(24.w, 24.h),
                                primary: const Color(0xffC3D61B),
                              ),
                              child: Text(
                                '-',
                                style: GoogleFonts.cairo(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: 15,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
            SizedBox(
              height: 120.h,
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'مجموع الطلبات',
                        style: GoogleFonts.cairo(
                          fontSize: 16.sp,
                          color: const Color(0XFF0E4C75),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '2000 شيكل',
                        style: GoogleFonts.cairo(
                          fontSize: 16.sp,
                          color: const Color(0xffCB0000),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/payment_methods_screen');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0E4C75),
                      minimumSize: Size(366.w, 53.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Text(
                      'شراء',
                      style: GoogleFonts.cairo(
                        fontSize: 16.sp,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
