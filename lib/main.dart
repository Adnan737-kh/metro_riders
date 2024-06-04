import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/auth/screens/forget_send_message.dart';
import 'package:metro_riders/screens/cart/cart.dart';
import 'package:metro_riders/screens/dashboard/dash_board.dart';
import 'package:metro_riders/screens/garage/garage_list.dart';
import 'package:metro_riders/screens/garage/my_garage.dart';
import 'package:metro_riders/screens/garage/the_city_pro.dart';
import 'package:metro_riders/screens/history/history.dart';
import 'package:metro_riders/screens/history/history_the_city.dart';
import 'package:metro_riders/screens/history/the_street_pro.dart';
import 'package:metro_riders/screens/profile/profile.dart';
import 'package:metro_riders/screens/profile/profile_menu.dart';
import 'package:metro_riders/screens/restore_password/codeconform.dart';
import 'package:metro_riders/screens/restore_password/createpassword.dart';
import 'package:metro_riders/screens/restore_password/restore_password.dart';
import 'package:metro_riders/screens/auth/screens/signin.dart';
import 'package:metro_riders/screens/auth/screens/signup.dart';
import 'package:metro_riders/screens/start_ride/startride.dart';
import 'package:metro_riders/screens/store/bags_croos_body.dart';
import 'package:metro_riders/screens/store/store.dart';
import 'package:metro_riders/screens/store/the_city_pro.dart';
import 'package:metro_riders/screens/wallet/add_new_card.dart';
import 'package:metro_riders/screens/wallet/wallet.dart';
import 'package:metro_riders/screens/welcome/welcome.dart';
import 'package:metro_riders/styles.dart';
import 'package:metro_riders/utility/controller.dart';
import 'package:metro_riders/utility/languages.dart';

void main() {
  runApp( MyApp(

  ));
}

class MyApp extends StatelessWidget {
  final TabControllerRest tabControllerRest = Get.put(TabControllerRest());
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.put(TabControllerRest());
      }),
      title: 'Flutter Demo',
      translations: Languages(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en','US'),
      theme: ThemeData(
        backgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(
            color: Styles.blackColor,
          ),
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(
            color: Colors.black,
          ),

        )
      ),
      home: const SignIn(),
      getPages: [
        GetPage(name: '/', page: () => const SignIn()),
        GetPage(name: '/signup', page: () => const SignUp()),
        GetPage(name: '/welcome', page: () => const WelcomeScreen()),
        GetPage(name: '/restore_password', page: () =>  const RestorePassword()),
        GetPage(name: '/forgot_message', page: () =>  const ForgotMessage()),
        GetPage(name: '/conform_code', page: () =>  const CodeConform()),
        GetPage(name: '/create_password', page: () =>  const CreateNewPassword()),
        GetPage(name: '/dash_board', page: () =>  const DashBoard(pageIndex: 0,)),
        GetPage(name: '/garage', page: () =>  const MyGarage()),
        GetPage(name: '/wallet', page: () =>  const Wallet()),
        GetPage(name: '/history', page: () =>  const History()),
        GetPage(name: '/store', page: () =>  const Store()),
        GetPage(name: '/garage_list', page: () =>  const GarageList()),
        GetPage(name: '/the_city_pro', page: () =>  const TheCityPro()),
        GetPage(name: '/the_city_pro_store', page: () =>   TheCityProStore()),
        GetPage(name: '/bags_cross_body', page: () =>   BagsCrossBody()),
        GetPage(name: '/start_ride', page: () =>   StartRide()),
        GetPage(name: '/history_the_city', page: () =>   const HistoryTheCity()),
        GetPage(name: '/the_street_pro', page: () =>   TheStreetPro()),
        GetPage(name: '/cart', page: () =>   const CartOrderOne()),
        GetPage(name: '/add_new_card', page: () =>   const AddMyCard()),
        GetPage(name: '/profile_menu', page: () =>   const ProfileMenu()),
        GetPage(name: '/profile', page: () =>   const Profile()),
      ],
    );
  }
}


