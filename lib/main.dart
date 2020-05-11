import 'package:flutter/material.dart';
import 'package:mobile_school_admin/ui/pages/settings/addClassRoom.dart';
import 'package:mobile_school_admin/ui/pages/settings/addSection.dart';
import 'package:mobile_school_admin/ui/pages/settings/manageSubjcets.dart';
import 'package:mobile_school_admin/ui/pages/teachers/addTeacher.dart';
import 'package:mobile_school_admin/ui/pages/teachers/teachersPage.dart';
import 'ui/auth/authPage.dart';
import 'ui/auth/loginPage.dart';
import 'ui/auth/recoverPassword.dart';
import 'ui/auth/signUpPage.dart';
import 'ui/pages/homePage.dart';
import 'ui/pages/notifications/notifications.dart';
import 'ui/pages/school/updateSchoolProfile.dart';
import 'ui/pages/settings/manageClassRooms.dart';
import 'ui/pages/settings/manageSections.dart';
import 'ui/pages/students/addStudent.dart';
import 'ui/pages/students/classRoomPage.dart';
import 'utils/constants.dart';
import 'utils/customRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Class Room',
      theme: ThemeData(
          primaryColor: Constants.primaryColorDark,
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: CustomPageTransitionBuilder(),
            TargetPlatform.android: CustomPageTransitionBuilder(),
          })),
      home: AuthPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        TeachersPage.routeName: (context) => TeachersPage(),
        // AcademicsPage.routeName: (context) => AcademicsPage(),
        ClassRoomPage.routeName: (context) => ClassRoomPage(),
        // ProfilePage.routeName: (context) => ProfilePage(),
        NotificationsPage.routeName: (context) => NotificationsPage(),
        AddTeacher.routeName: (context) => AddTeacher(),
        AddStudent.routeName: (context) => AddStudent(),
        UpdateSchoolProfile.routeName: (context) => UpdateSchoolProfile(),
        LoginPage.routeName: (context) => LoginPage(),
        SignUpPage.routeName: (context) => SignUpPage(),
        RecoverPassword.routeName: (context) => RecoverPassword(),
        ManageSections.routeName: (context) => ManageSections(),
        AddSection.routeName: (context) => AddSection(),
        ManageClassRooms.routeName: (context) => ManageClassRooms(),
        AddClassRoom.routeName: (context) => AddClassRoom(),
        ManageSubject.routeName: (context) => ManageSubject()
      },
    );
  }
}
