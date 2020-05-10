import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';
import 'package:mobile_school_admin/utils/constants.dart';

class AddStudent extends StatelessWidget {
  _buildInputRow(String label, IconData iconData) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: label,
          labelStyle: AppStyle.labelTextStyle,
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(
              iconData,
              size: 20,
              color: Colors.black,
            ),
          )),
    );
  }

  static final routeName = "add-student";
  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
      title: "Add Student",
      childWidget: Container(
        height: sz.height,
        width: sz.width,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Form(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      _buildInputRow("first name", FontAwesomeIcons.edit),
                      SizedBox(
                        height: 10,
                      ),
                      _buildInputRow("middle name", FontAwesomeIcons.edit),
                      SizedBox(
                        height: 10,
                      ),
                      _buildInputRow("last name", FontAwesomeIcons.edit),
                      SizedBox(
                        height: 10,
                      ),
                      _buildInputRow(
                          "date of birth", FontAwesomeIcons.calendar),
                      SizedBox(
                        height: 10,
                      ),
                      _buildInputRow("email", FontAwesomeIcons.envelope),
                      SizedBox(
                        height: 10,
                      ),
                      _buildInputRow("password", FontAwesomeIcons.user),
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
          ),
        ),
      ),
    );
  }
}
