import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_school_admin/ui/pages/settings/manageClassRooms.dart';
import 'package:mobile_school_admin/ui/pages/settings/manageSections.dart';
import 'package:mobile_school_admin/ui/pages/settings/manageSubjcets.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';
import 'package:mobile_school_admin/utils/constants.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            accountName: Text("Denisty High School",
                style: AppStyle.mediumWhiteTexttSTyle),
            accountEmail: Text(
              "density@gmail.com",
              style: AppStyle.normalhiteTexttSTyle,
            ),
            currentAccountPicture: Icon(
              Icons.account_balance,
              color: Colors.white,
              size: 75,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.chartBar,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "Manage Sections",
                    style: AppStyle.mediumTextStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(ManageSections.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.wc,
                    color: Colors.orange,
                  ),
                  title: Text(
                    "Manage Class Rooms",
                    style: AppStyle.mediumTextStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(ManageClassRooms.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.wb_incandescent,
                    color: Colors.green,
                  ),
                  title: Text(
                    "Manage Subjects",
                    style: AppStyle.mediumTextStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(ManageSubject.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.signOutAlt,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Log Out",
                    style: AppStyle.mediumTextStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
