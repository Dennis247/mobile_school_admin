import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_school_admin/model/student.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

import 'addStudent.dart';
import 'studentPerformance.dart';

class StudentDetails extends StatelessWidget {
  final Student student;

  const StudentDetails({Key key, this.student}) : super(key: key);

  _buildTileWidget(String title, String subtitle, IconData iconData,
      Color color, Widget trailingWidget) {
    return ListTile(
        leading: Icon(
          iconData,
          color: color,
          size: 20,
        ),
        title: Text(
          title,
          style: AppStyle.smallTexttSTyle,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyle.mediumTextStyle,
        ),
        trailing: trailingWidget);
  }

  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
        title: "Details",
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.of(context).pushNamed(AddStudent.routeName);
              })
        ],
        childWidget: Container(
            height: sz.height,
            width: sz.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: student.id,
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/user.png"))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        _buildTileWidget(
                            "full names",
                            "${student.firstNae} ${student.middleName} ${student.lastName}",
                            Icons.accessibility_new,
                            Colors.red,
                            null),
                        Divider(),
                        _buildTileWidget(
                          "Overall Rating",
                          "85 %",
                          Icons.school,
                          Colors.indigo,
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return StudentPerformance(
                                  student: student,
                                );
                              }));
                            },
                            shape: StadiumBorder(),
                            child: Text(
                              "VIEW ",
                              style: AppStyle.smallWhiteTexttSTyle,
                            ),
                            color: Colors.black,
                          ),
                        ),
                        _buildTileWidget(
                            "class",
                            "JSS1 Mecury",
                            FontAwesomeIcons.chalkboardTeacher,
                            Colors.green,
                            null),
                        Divider(),
                        _buildTileWidget("age", "12 years",
                            FontAwesomeIcons.running, Colors.blue, null),
                        Divider(),
                        _buildTileWidget("Phone", "+2348167828256",
                            FontAwesomeIcons.phone, Colors.deepPurple, null),
                        Divider(),
                        _buildTileWidget("Email", "dosamuyimen@gmail.com",
                            Icons.mail, Colors.orange, null),
                        Divider(),
                        Divider(),
                      ]),
                ),
              ),
            )));
  }
}
