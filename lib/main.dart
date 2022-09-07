
import 'package:el_family/provider/app_controller.dart';
import 'package:el_family/screens/acaount/add_addresses.dart';
import 'package:el_family/screens/acaount/addresses.dart';
import 'package:el_family/screens/acaount/around.dart';
import 'package:el_family/screens/acaount/edit_acount.dart';
import 'package:el_family/screens/acaount/notifications.dart';
import 'package:el_family/screens/acaount/support.dart';
import 'package:el_family/screens/auth/forget%20_password.dart';
import 'package:el_family/screens/auth/forget_verification.dart';
import 'package:el_family/screens/auth/logIn_screen.dart';
import 'package:el_family/screens/auth/new_account_verification.dart';
import 'package:el_family/screens/auth/reset_password.dart';
import 'package:el_family/screens/auth/sign_up_screen.dart';
import 'package:el_family/screens/launch_screen.dart';
import 'package:el_family/screens/navigation_bar/navigation_bar_screen.dart';
import 'package:el_family/screens/on_boardung/on_boardung_screen.dart';
import 'package:el_family/screens/payment_methods.dart';
import 'package:el_family/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppController>(
      create: (context) => AppController(),
      builder: (context, child) {
        return ScreenUtilInit(
          designSize:  const Size(428, 926),
          minTextAdapt: true,
          builder: (context, child) {
            return MaterialApp(
              locale: const Locale('ar'),
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('ar'),
              ],
              debugShowCheckedModeBanner: false,
              initialRoute: '/launch_screen',
              routes: {
                '/launch_screen' :(context) => const LaunchScreen(),
                '/login_screen' :(context) => const LogInScreen(),
                '/sign_up_screen' :(context) => const SignUpScreen(),
                '/navigation_bar_screen' :(context) =>  NavigationBar1(),
                '/sub_cat_screen' :(context) =>  const SubCategories(),
                '/payment_methods_screen' :(context) =>  const PaymentMethods(),
                '/edit_account_screen' :(context) =>  const EditAcount(),
                '/around_screen' :(context) =>  const Around(),
                '/support_screen' :(context) =>  const  Support(),
                '/notifications_screen' :(context) =>  const  Notifications(),
                '/onBoardungScreen_screen' :(context) =>  const  onBoardungScreen(),
                '/ForgetPassword_screen' :(context) =>  const  ForgetPassword(),
                '/VerificationForget_screen' :(context) =>  const  VerificationForget(),
                '/ResetPassword_screen' :(context) =>  const  ResetPassword(),
                '/VerificationNewAccount_screen' :(context) =>  const  VerificationNewAccount(),
                '/addresses_screen' :(context) =>  const  ADDRESSES(),
                '/add_addresses_screen' :(context) =>  const  AddAddresses(),
              },
            );
          },
        );
      },
    );
  }
}
