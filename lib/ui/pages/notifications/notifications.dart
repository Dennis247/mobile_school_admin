import 'package:flutter/material.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';

class NotificationsPage extends StatelessWidget {
  static final routeName = "notifications";
  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
      title: "Notifications",
      childWidget: Container(
        height: sz.height,
        width: sz.width,
      ),
    );
  }
}
