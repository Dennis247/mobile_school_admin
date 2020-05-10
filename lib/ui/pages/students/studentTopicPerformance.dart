import 'package:flutter/material.dart';
import 'package:mobile_school_admin/model/student.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

class StudentTopicPerformance extends StatelessWidget {
  final Student student;
  const StudentTopicPerformance({Key key, this.student}) : super(key: key);

  _buildPerformanceWidget(String subject, double rating, Color color) {
    return Card(
      child: ListTile(
        onTap: () {
          //todo show assessmet Details
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

  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
      title: "Mathematics Performance",
      childWidget: Container(
        height: sz.height,
        width: sz.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              _buildPerformanceWidget("Mathematics", 85, Colors.green),
              _buildPerformanceWidget("English", 50, Colors.blue),
              _buildPerformanceWidget("Science", 15, Colors.red),
              _buildPerformanceWidget(
                  "Information Technology", 85, Colors.green),
              _buildPerformanceWidget("Religion", 65, Colors.blue),
              _buildPerformanceWidget("Qunattaive Reasoning", 80, Colors.green),
              _buildPerformanceWidget("Verbal Aptitude", 50, Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
