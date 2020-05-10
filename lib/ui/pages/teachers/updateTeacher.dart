import 'package:flutter/material.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';

class UpdateTeacher extends StatelessWidget {
  static final routeName = "add-teacher";
  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
      title: "Update Teacher",
      childWidget: Container(
        height: sz.height,
        width: sz.width,
      ),
    );
  }
}
