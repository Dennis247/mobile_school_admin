import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_school_admin/model/section.dart';
import 'package:mobile_school_admin/ui/pages/settings/addSection.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';

class ManageSections extends StatelessWidget {
  static final String routeName = "manage-sections";
  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    final allSections = Section.getAllSections;
    return AppScaffold(
      title: "Manage Sections",
      fab: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AddSection.routeName);
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
              itemCount: allSections.length,
              itemBuilder: (context, index) {
                final section = allSections[index];
                return Card(
                  elevation: 2.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(AddSection.routeName);
                      },
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.chartBar,
                          color: Colors.black,
                        ),
                        title: Text(
                          section.sectionName,
                          style: AppStyle.mediumTextStyle,
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
