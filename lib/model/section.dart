import 'package:flutter/material.dart';

class Section {
  final String id;
  final String sectionName;

  Section({@required this.id, @required this.sectionName});

  static List<Section> getAllSections = [
    Section(id: "1", sectionName: "Nursery"),
    Section(id: "2", sectionName: "Primary"),
    Section(id: "3", sectionName: "Secondary"),
  ];
}
