import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ADDRESSES extends StatefulWidget {
  const ADDRESSES({Key? key}) : super(key: key);

  @override
  State<ADDRESSES> createState() => _ADDRESSESState();
}

class _ADDRESSESState extends State<ADDRESSES> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'العناوين',
            style: GoogleFonts.cairo(
              color: const Color(0xff0E4C75),
              fontSize: 17.sp,
            ),
          ),
          iconTheme: null,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/add_addresses_screen');
            },
            icon: const Icon(
              Icons.add_box_outlined,
              color: Color(0xff0E4C75),
            ),
          ),
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
        body: GridView.builder(
          itemCount: 20,
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ),
          itemBuilder: (context, index) {
            return Container(
              // margin:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'الأسم',
                          style: GoogleFonts.cairo(
                            color: const Color(0xff0E4C75),
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          'ممممممممممممممم',
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
                          'وصف توضيحي',
                          style: GoogleFonts.cairo(
                            color: const Color(0xff0E4C75),
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          'مممممممممممممم',
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
                          'رقم الأتصال',
                          style: GoogleFonts.cairo(
                            color: const Color(0xff0E4C75),
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          '0599999999',
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
                          'المدينة',
                          style: GoogleFonts.cairo(
                            color: const Color(0xff0E4C75),
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          'غزة',
                          style: GoogleFonts.cairo(
                            color: const Color(0xffC3D61B),
                            fontSize: 11.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.blueGrey,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
