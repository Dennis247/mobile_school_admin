import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_school_admin/model/classroom.dart';
import 'package:mobile_school_admin/model/student.dart';
import 'package:mobile_school_admin/model/teacher.dart';
import 'package:mobile_school_admin/ui/pages/students/studentDetails.dart';
import 'package:mobile_school_admin/ui/pages/teachers/teacherDashBoard.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

import 'addTeacher.dart';

class TeachersPage extends StatefulWidget {
  static final String routeName = "teachers";

  const TeachersPage({Key key}) : super(key: key);
  @override
  _TeachersPageState createState() => _TeachersPageState();
}

class _TeachersPageState extends State<TeachersPage> {
  _buildTeacherRow(BuildContext context, Size sz, String fullName,
      String imageUrl, Function function, String teacherId) {
    return GestureDetector(
      onTap: function,
      child: Card(
          elevation: 1,
          child: Container(
            alignment: Alignment.center,
            height: 75,
            child: ListTile(
              leading: Hero(
                tag: teacherId,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(imageUrl),
                  radius: 25,
                ),
              ),
              title: Text(
                fullName,
                style: AppStyle.mediumTextStyle,
              ),
              trailing: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  onPressed: function),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final allTeachers = Teacher.getTeacherLIst;
    // .where((cl) => cl.id == widget.classRoom.id)
    // .toList();
    final size = MediaQuery.of(context).size;
    return AppScaffold(
      title: "Tecahers",
      fab: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context).pushNamed(AddTeacher.routeName);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      childWidget: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 2.0,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        hintText: "Search..",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Icons.filter_list,
                          color: Colors.black,
                        ),
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                      maxLines: 1,
                    )),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: allTeachers.length,
                  itemBuilder: (BuildContext context, int index) {
                    final teacher = allTeachers[index];
                    return _buildTeacherRow(
                        context,
                        size,
                        "${teacher.firstNae} ${teacher.lastName}",
                        teacher.imageUrl, () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return TeacherDashBoard(
                          teacher: teacher,
                        );
                      }));
                    }, teacher.id);
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
