import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:mobile_school_admin/model/classroom.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';
import 'package:mobile_school_admin/utils/constants.dart';

class AddTeacher extends StatefulWidget {
  static final routeName = "add-teacher";

  @override
  _AddTeacherState createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {
  ClassRoom _selectedCLass;
  _buildInputRow(String label, IconData iconData) {
    return TextFormField(
      style: AppStyle.normalTexttSTyle,
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

  @override
  Widget build(BuildContext context) {
    List<ClassRoom> allClassRooms = ClassRoom.getClassRooms;
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
      title: "Add Teacher",
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
                      _buildInputRow("email", FontAwesomeIcons.envelope),
                      SizedBox(
                        height: 10,
                      ),
                      _buildInputRow("password", FontAwesomeIcons.user),
                      new DropdownButtonFormField<ClassRoom>(
                        decoration: InputDecoration(
                            labelText: "select class",
                            labelStyle: AppStyle.labelTextStyle,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Icon(
                                FontAwesomeIcons.desktop,
                                size: 20,
                                color: Colors.black,
                              ),
                            )),
                        items: allClassRooms.map((ClassRoom value) {
                          return new DropdownMenuItem<ClassRoom>(
                            value: value,
                            child: new Text(
                              value.name,
                              style: AppStyle.normalTexttSTyle,
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedCLass = value;
                          });
                        },
                        value: _selectedCLass,
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
            ),
          ),
        ),
      ),
    );
  }
}
