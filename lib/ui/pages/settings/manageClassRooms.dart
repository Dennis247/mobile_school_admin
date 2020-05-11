import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_school_admin/model/classroom.dart';
import 'package:mobile_school_admin/model/section.dart';
import 'package:mobile_school_admin/ui/pages/settings/addClassRoom.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

class ManageClassRooms extends StatelessWidget {
  static final String routeName = "manage-classrooms";

  getSectionName(String sectionId) {
    final allSection = Section.getAllSections;
    final section = allSection.firstWhere((element) => element.id == sectionId,
        orElse: () => null);
    return section.sectionName;
  }

  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    final allClassRooms = ClassRoom.getClassRooms;

    return AppScaffold(
      title: "Manage Class Rooms",
      fab: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AddClassRoom.routeName);
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
      childWidget: Container(
        height: sz.height,
        width: sz.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: allClassRooms.length,
              itemBuilder: (context, index) {
                final classRoom = allClassRooms[index];
                final section = getSectionName(classRoom.sectionId);
                return Card(
                  elevation: 2.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(AddClassRoom.routeName);
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.wc,
                          color: Colors.black,
                        ),
                        title: Text(
                          classRoom.name,
                          style: AppStyle.mediumTextStyle,
                        ),
                        subtitle: Text(
                          section,
                          style: AppStyle.smallTexttSTyle,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
