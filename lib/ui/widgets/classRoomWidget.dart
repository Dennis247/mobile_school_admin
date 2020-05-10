import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_school_admin/model/classroom.dart';
import 'package:mobile_school_admin/ui/pages/students/studentsPage.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

class ClassRoomWidget extends StatelessWidget {
  final ClassRoom classRoom;

  const ClassRoomWidget({Key key, this.classRoom}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return StudentPage(
            classRoom: classRoom,
          );
        }));
      },
      child: Card(
        elevation: 2,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              FontAwesomeIcons.desktop,
              color: Colors.black,
            ),
          ),
          title: Text(
            classRoom.name,
            style: AppStyle.mediumTextStyle,
          ),
          subtitle: Text(
            "ARM : ${classRoom.classArm}",
            style: AppStyle.smallTexttSTyle,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
        ),
      ),
    );
  }
}
