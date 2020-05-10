import 'package:flutter/material.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';

class AddTeacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
      title: "Teacher Details",
      childWidget: Container(
        height: sz.height,
        width: sz.width,
      ),
    );
  }
}
