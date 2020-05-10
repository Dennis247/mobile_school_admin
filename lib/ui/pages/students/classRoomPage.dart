import 'package:flutter/material.dart';
import 'package:mobile_school_admin/model/classroom.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/ui/widgets/classRoomWidget.dart';

class ClassRoomPage extends StatelessWidget {
  static final routeName = "classroom";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final allClassRooms = ClassRoom.getClassRooms;
    return AppScaffold(
      title: "Class Rooms",
      childWidget: Container(
        height: size.height,
        width: size.width,
        child: ListView.builder(
            itemCount: allClassRooms.length,
            itemBuilder: (contex, index) {
              final currentClassRoom = allClassRooms[index];
              return ClassRoomWidget(
                classRoom: currentClassRoom,
              );
            }),
      ),
    );
  }
}
