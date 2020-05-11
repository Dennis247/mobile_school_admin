import 'package:flutter/material.dart';
import 'package:mobile_school_admin/model/topic.dart';
import 'package:mobile_school_admin/ui/widgets/appScafold.dart';
import 'package:mobile_school_admin/utils/AppStyles.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class TeacherNote extends StatefulWidget {
  final Topic topic;
  const TeacherNote({Key key, this.topic}) : super(key: key);
  @override
  _TeacherNoteState createState() => _TeacherNoteState();
}

class _TeacherNoteState extends State<TeacherNote> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/pdf/livingthings.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
      title: widget.topic.topicName,
      actions: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 16),
          alignment: Alignment.center,
          child: Text(
            '$_actualPageNumber/$_allPagesCount',
            style: AppStyle.headerTextStyle,
          ),
        ),
      ],
      childWidget: Container(
        width: sz.width,
        height: sz.height,
        child: PdfView(
          documentLoader: Center(child: CircularProgressIndicator()),
          pageLoader: Center(child: CircularProgressIndicator()),
          controller: _pdfController,
          onDocumentLoaded: (document) {
            setState(() {
              _allPagesCount = document.pagesCount;
            });
          },
          onPageChanged: (page) {
            setState(() {
              _actualPageNumber = page;
            });
          },
        ),
      ),
    );
  }
}
