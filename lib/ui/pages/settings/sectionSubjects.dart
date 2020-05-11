import 'package:flutter/material.dart';
import 'package:mobile_school_admin/model/section.dart';
import 'package:mobile_school_admin/model/subject.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

import 'addSectionSubject.dart';

class SectionSubjects extends StatelessWidget {
  final Section section;

  const SectionSubjects({Key key, this.section}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    final alSUbjects = Subject.getSubjects();
    return AppScaffold(
      title: "${section.sectionName} Subjects",
      fab: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddSectionSubject(
              section: section,
            );
          }));
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
              itemCount: alSUbjects.length,
              itemBuilder: (context, index) {
                final subject = alSUbjects[index];
                return Card(
                  elevation: 2.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return AddSectionSubject(
                            section: section,
                          );
                        }));
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.wb_incandescent,
                          color: Colors.black,
                        ),
                        title: Text(
                          subject.subjectName,
                          style: AppStyle.mediumTextStyle,
                        ),
                        subtitle: Text(
                          "Section: ${section.sectionName}",
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
