import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';
import 'package:mobile_school_admin/utils/constants.dart';

class UpdateSchoolProfile extends StatelessWidget {
  static final String routeName = "school-profile";

  _builInputWidget(String label, IconData iconData) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            iconData,
            color: Constants.primaryColorDark,
            size: 20,
          ),
          labelText: label,
          labelStyle: AppStyle.labelTextStyle,
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black))),
      obscureText: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
      title: "School Profile",
      childWidget: Container(
        height: sz.height,
        width: sz.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.account_balance,
                  size: sz.height * 0.2,
                ),
                SizedBox(
                  height: sz.height * 0.03,
                ),
                _builInputWidget("school name", FontAwesomeIcons.edit),
                SizedBox(
                  height: sz.height * 0.01,
                ),
                _builInputWidget("school email", FontAwesomeIcons.envelope),
                SizedBox(
                  height: sz.height * 0.01,
                ),
                _builInputWidget("school phone", FontAwesomeIcons.phone),
                SizedBox(
                  height: sz.height * 0.01,
                ),
                _builInputWidget(
                    "school Address", FontAwesomeIcons.addressCard),
                SizedBox(
                  height: sz.height * 0.05,
                ),
                MaterialButton(
                  height: 48,
                  elevation: 2.0,
                  minWidth: sz.width,
                  color: Constants.primaryColorDark,
                  onPressed: () {},
                  child: Text('SUBMIT',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Constants.primaryColorLight,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                          color: Constants.primaryColorDark, width: 2)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
