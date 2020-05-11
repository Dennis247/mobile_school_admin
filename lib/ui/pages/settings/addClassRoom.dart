import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_school_admin/model/section.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';
import 'package:mobile_school_admin/utils/constants.dart';

class AddClassRoom extends StatefulWidget {
  static final String routeName = "add-classroom";

  @override
  _AddClassRoomState createState() => _AddClassRoomState();
}

class _AddClassRoomState extends State<AddClassRoom> {
  Section _selectedSection;
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
    final allSections = Section.getAllSections;
    return AppScaffold(
      title: "Add Class",
      childWidget: Container(
        height: sz.height,
        width: sz.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              _builInputWidget("class name", FontAwesomeIcons.edit),
              DropdownButtonFormField<Section>(
                decoration: InputDecoration(
                    labelText: "select section",
                    labelStyle: AppStyle.labelTextStyle,
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.account_balance,
                        size: 20,
                        color: Colors.black,
                      ),
                    )),
                items: allSections.map((Section value) {
                  return DropdownMenuItem<Section>(
                    value: value,
                    child: Text(
                      value.sectionName,
                      style: AppStyle.normalTexttSTyle,
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedSection = value;
                  });
                },
                value: _selectedSection,
              ),
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
