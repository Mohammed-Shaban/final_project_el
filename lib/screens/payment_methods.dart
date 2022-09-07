import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tnet_credit_card/tnet_credit_card.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'طرق الدفع',
          style: GoogleFonts.cairo(
            color: const Color(0xff0E4C75),
            fontSize: 17.sp,
          ),
        ),
        iconTheme: null,
        leading: IconButton(
          onPressed: () {

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
      body: Center(
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: Container(
                height: 350.h,
                width: double.infinity.w,
                child: Column(
                  children: [
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
                    Spacer(),
                    TNETCreditCard(
                      shadowGradient: Colors.white,
                      firstGradientColor: Colors.blue,
                      secondGradientColor: Colors.blueAccent,
                      cardName: "Marco",
                      firstLogo: Image.asset(
                        'images/about.png',
                        height: 30,
                        width: 30,
                      ),
                      secondLogo: Image.asset(
                        'images/about.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
