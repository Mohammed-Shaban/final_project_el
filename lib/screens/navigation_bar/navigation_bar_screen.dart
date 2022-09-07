
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../provider/app_controller.dart';
import 'BnScreev.dart';
import '../acaount/acount.dart';
import 'all_categories.dart';
import 'cart.dart';
import 'home_screen.dart';
import 'orders.dart';

class NavigationBar1 extends StatefulWidget {
  NavigationBar1({Key? key}) : super(key: key);

  @override
  State<NavigationBar1> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar1> {
  final List<BnScreen> bn = <BnScreen>[
    const BnScreen(
      widget: AllCategories(),
    ),
    const BnScreen(
      widget: CartScreen(),
    ),
    const BnScreen(
      widget: HomeScreen(),
    ),
    const BnScreen(
      widget: Orders(),
    ),
    const BnScreen(
      widget: AcountScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: const Color(0xffF5F5F5),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (int value) {
              Provider.of<AppController>(context, listen: false)
                  .setselected(value);
            },
            currentIndex: Provider.of<AppController>(context).selected,
            selectedItemColor: Color(0xff0E4C75),
            selectedFontSize: 20.sp,
            selectedIconTheme: const IconThemeData(size: 24),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: 'الفئات'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'السلة'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag), label: 'الطلبات'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.manage_accounts_rounded), label: 'الاعدادات'),
            ],
          ),
          body: bn[Provider.of<AppController>(context).selected].widget,
        );
      },
    );
  }
}
