import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class SubCategories extends StatefulWidget {
  const SubCategories({Key? key}) : super(key: key);

  @override
  State<SubCategories> createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'العصائر',
          style: GoogleFonts.cairo(
            color: const Color(0xff0E4C75),
            fontSize: 17.sp,
          ),
        ),
        iconTheme: null,
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
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                  radius: 35.r,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'مانجا',
                      style: GoogleFonts.cairo(
                        color: const Color(0xff0E4C75),
                        fontSize: 12.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'توضيح',
                          style: GoogleFonts.cairo(
                            color: const Color(0xff0E4C75),
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          'ممممممم',
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
                          'السعر',
                          style: GoogleFonts.cairo(
                            color: const Color(0xff0E4C75),
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          '5\$',
                          style: GoogleFonts.cairo(
                            color: const Color(0xffC3D61B),
                            fontSize: 11.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border_purple500_outlined,
                          size: 18.sp,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star_border_purple500_outlined,
                          size: 18.sp,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star_border_purple500_outlined,
                          size: 18.sp,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star_border_purple500_outlined,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star_border_purple500_outlined,
                          size: 18.sp,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'معدل التقييم',
                          style: GoogleFonts.cairo(
                            color: const Color(0xff0E4C75),
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          '3/5',
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
                          'الكمية المتاحة',
                          style: GoogleFonts.cairo(
                            color: const Color(0xff0E4C75),
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          '20 حبة',
                          style: GoogleFonts.cairo(
                            color: const Color(0xffC3D61B),
                            fontSize: 11.sp,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_shopping_cart_outlined,
                        color: Color(0xff0E4C75),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
