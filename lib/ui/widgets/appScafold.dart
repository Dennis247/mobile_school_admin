import 'package:flutter/material.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget childWidget;
  final List<Widget> actions;
  final FloatingActionButton fab;
  final Widget appDrawer;

  const AppScaffold(
      {Key key,
      this.title,
      this.childWidget,
      this.actions,
      this.fab,
      this.appDrawer})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: appDrawer,
        appBar: AppBar(
          actions: actions,
          title: Text(
            title,
            style: AppStyle.headerTextStyle,
          ),
          centerTitle: true,
          // automaticallyImplyLeading: true,

          leading: appDrawer != null
              ? null
              : IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: childWidget),
        floatingActionButton: fab,
      ),
    );
  }
}
