import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_school_admin/model/classroom.dart';
import 'package:mobile_school_admin/model/student.dart';
import 'package:mobile_school_admin/ui/pages/students/studentDetails.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

class StudentPage extends StatefulWidget {
  final ClassRoom classRoom;

  const StudentPage({Key key, this.classRoom}) : super(key: key);
  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  _buildAcademicRow(BuildContext context, Size sz, String fullName,
      String imageUrl, Function function, String studentId) {
    return GestureDetector(
      onTap: function,
      child: Card(
          elevation: 1,
          child: Container(
            alignment: Alignment.center,
            height: 75,
            child: ListTile(
              leading: Hero(
                tag: studentId,
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
    final allStudents = Student.getStudentLIst;
    // .where((cl) => cl.id == widget.classRoom.id)
    // .toList();
    final size = MediaQuery.of(context).size;
    return AppScaffold(
      title: "${widget.classRoom.name} Members",
      fab: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          //   Navigator.of(context).pushNamed(AddStudent.routeName);
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
                  itemCount: allStudents.length,
                  itemBuilder: (BuildContext context, int index) {
                    final student = allStudents[index];
                    return _buildAcademicRow(
                        context,
                        size,
                        "${student.firstNae} ${student.lastName}",
                        student.imageUrl, () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return StudentDetails(
                          student: student,
                        );
                      }));
                    }, student.id);
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
