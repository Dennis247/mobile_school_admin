import 'package:flutter/material.dart';
import 'package:mobile_school_admin/model/student.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';
import 'studentTopicPerformance.dart';

class StudentPerformance extends StatelessWidget {
  final Student student;

  _buildPerformanceWidget(
      String subject, double rating, Color color, BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          //todo show assessmet Details
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return StudentTopicPerformance();
          }));
        },
        title: Text(
          subject,
          style: AppStyle.mediumBoldTextStyle,
        ),
        subtitle: LinearProgressIndicator(
          value: rating / 100,
          valueColor: AlwaysStoppedAnimation(color),
          backgroundColor: Colors.grey,
        ),
        trailing: Text(
          "$rating %",
          style: AppStyle.largeBoldTextStyle,
        ),
      ),
    );
  }

  const StudentPerformance({Key key, this.student}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
      title: "${student.firstNae} Performance",
      childWidget: Container(
        height: sz.height,
        width: sz.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              _buildPerformanceWidget("Mathematics", 85, Colors.green, context),
              _buildPerformanceWidget("English", 50, Colors.blue, context),
              _buildPerformanceWidget("Science", 15, Colors.red, context),
              _buildPerformanceWidget(
                  "Information Technology", 85, Colors.green, context),
              _buildPerformanceWidget("Religion", 65, Colors.blue, context),
              _buildPerformanceWidget(
                  "Qunattaive Reasoning", 80, Colors.green, context),
              _buildPerformanceWidget(
                  "Verbal Aptitude", 50, Colors.blue, context),
            ],
          ),
        ),
      ),
    );
  }
}
