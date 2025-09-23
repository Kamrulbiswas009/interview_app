import 'package:acied_test/UI%20Desigin/Screens/Login&SiginUp/sigin_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'UI Desigin/Screens/Login&SiginUp/login.dart';
import 'UI Desigin/Screens/Login&SiginUp/spalash_2.dart';
import 'UI Desigin/Screens/Login&SiginUp/splash_screen.dart';
import 'UI Desigin/Screens/Profile SetUp/profile_update_1st.dart';
import 'UI Desigin/Screens/Profile SetUp/profile_update_2nd.dart';
import 'UI Desigin/Screens/Profile SetUp/profile_update_3rd.dart';
import 'UI Desigin/Screens/Profile SetUp/profile_update_4nd.dart';

class MyJobs extends StatelessWidget {
  const MyJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.green,
            fixedSize: Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      getPages: [
        //login
        GetPage(name: Login.name, page: () => const Login()),
        //siginup
        GetPage(name: SiginUp.name, page: () => const SiginUp()),
        //profileupdate1st
        GetPage(
          name: ProfileUpdate1st.name,
          page: () => const ProfileUpdate1st(),
        ),
        GetPage(
          name: Page1.name,
          page: () => const Page1(step: 1, totalSteps: 3),
        ),
        GetPage(
          name: Page2.name,
          page: () => const Page2(step: 2, totalSteps: 3),
        ),
        GetPage(
          name: Page3.name,
          page: () => const Page3(step: 3, totalSteps: 3),
        ),
      ],
      initialRoute: Spalash2.name,

      home: SplashScreen(),
    );
  }
}
