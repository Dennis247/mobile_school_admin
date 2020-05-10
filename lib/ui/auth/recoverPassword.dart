import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_school_admin/ui/pages/homePage.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';
import 'package:mobile_school_admin/utils/constants.dart';

class RecoverPassword extends StatelessWidget {
  static final routeName = "recover-password";

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
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: sz.width,
          height: sz.height,
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/tutorials_3.png",
                    scale: 3,
                  ),
                  SizedBox(height: sz.height * 0.01),
                  _builInputWidget("email", FontAwesomeIcons.envelope),
                  SizedBox(height: sz.height * 0.01),
                  SizedBox(height: sz.height * 0.06),
                  MaterialButton(
                    height: 48,
                    elevation: 2.0,
                    minWidth: sz.width,
                    color: Constants.primaryColorDark,
                    onPressed: () {
                      Navigator.of(context).pushNamed(HomePage.routeName);
                    },
                    child: Text('RECOVER',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Constants.primaryColorLight,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(
                            color: Constants.primaryColorDark, width: 2)),
                  ),
                  SizedBox(
                    height: sz.height * 0.07,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
