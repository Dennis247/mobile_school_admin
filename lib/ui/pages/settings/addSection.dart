import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';
import 'package:mobile_school_admin/utils/constants.dart';

class AddSection extends StatelessWidget {
  static final String routeName = "add-sections";

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
      title: "Add Section",
      childWidget: Container(
        height: sz.height,
        width: sz.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              _builInputWidget("section name", FontAwesomeIcons.edit),
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
    );
  }
}
