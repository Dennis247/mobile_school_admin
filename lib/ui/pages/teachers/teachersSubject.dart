import 'package:flutter/material.dart';
import 'package:mobile_school_admin/model/subject.dart';
import 'package:mobile_school_admin/model/teacher.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/ui/widgets/subjectWidget.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

class TeachersSubject extends StatelessWidget {
  final Teacher teacher;

  const TeachersSubject({Key key, this.teacher}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    final allSUbjects = Subject.getSubjects();
    return AppScaffold(
      title: "${teacher.firstNae} Subjects",
      childWidget: Container(
        width: sz.width,
        height: sz.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 9.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1,
            ),
            itemCount: allSUbjects.length,
            itemBuilder: (BuildContext context, int index) {
              return SubjectWidget(
                subject: allSUbjects[index],
                sz: sz,
              );
            },
          ),
        ),
      ),
    );
  }
}
