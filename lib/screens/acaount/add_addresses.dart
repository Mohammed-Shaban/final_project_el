import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class AddAddresses extends StatefulWidget {
  const AddAddresses({Key? key}) : super(key: key);

  @override
  State<AddAddresses> createState() => _AddAddressesState();
}

class _AddAddressesState extends State<AddAddresses> {
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'اضافة عنوان جديد',
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
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'العنوان',
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
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28.r),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Text(
              'العنوان بالتفصيل',
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
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28.r),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
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
            DropdownButton(
              // Initial Value
              value: dropdownvalue,
             isExpanded: true,
              // Down Arrow Icon
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xffC3D61B),
              ),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: GoogleFonts.cairo(
                      color: const Color(0xffC3D61B),
                    ),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
            SizedBox(height: 40.h,),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(361.w, 59.h),
                  primary: Color(0xff0E4C75),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29.5.r)),
                  elevation: 5),
              child: Text(
                'اضافة',
                style: GoogleFonts.cairo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
