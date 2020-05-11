import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_school_admin/model/subject.dart';
import 'package:mobile_school_admin/model/topic.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

import 'teacherTopicDashBoard.dart';

class TeacherSubjectTopic extends StatelessWidget {
  static final String routeName = "subject-topics";
  final Subject subject;
  const TeacherSubjectTopic({Key key, this.subject}) : super(key: key);

  _buildTopicWidget(Topic topic, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return TeacherTopicDashBoard(topic: topic);
        }));
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Text(
              topic.subjectName[0],
              style: AppStyle.headerTextStyle,
            ),
          ),
          title: Text(
            topic.topicName,
            style: AppStyle.normalTexttSTyle,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final allSubjectTopics = Topic.getAllTopics
        .where((tp) => tp.subjectName == subject.subjectName)
        .toList();
    return AppScaffold(
      title: subject.subjectName,
      childWidget: Container(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: allSubjectTopics.length > 0
            ? ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: allSubjectTopics.length,
                itemBuilder: (context, index) {
                  return _buildTopicWidget(allSubjectTopics[index], context);
                })
            : Center(
                child: Text(
                  "No Note has been Added Yet",
                  style: AppStyle.normalTexttSTyle,
                ),
              ),
      )),
    );
  }
}
