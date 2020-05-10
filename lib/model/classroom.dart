import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class ClassRoom {
  final String id;
  final String name;
  final String classLevel;
  final String teacherId;
  final String classArm;
  final String schoolId;

  ClassRoom(
      {@required this.id,
      @required this.name,
      @required this.classLevel,
      @required this.teacherId,
      @required this.classArm,
      @required this.schoolId});

  static List<ClassRoom> getClassRooms = [
    ClassRoom(
        id: "J1",
        name: "JSS1",
        classLevel: "Primary",
        teacherId: faker.guid.toString(),
        classArm: "A",
        schoolId: faker.guid.toString()),
    ClassRoom(
        id: "J2",
        name: "JSS2",
        classLevel: "Primary",
        teacherId: faker.guid.toString(),
        classArm: "A",
        schoolId: faker.guid.toString()),
    ClassRoom(
        id: "J3",
        name: "JSS3",
        classLevel: "Primary",
        teacherId: faker.guid.toString(),
        classArm: "A",
        schoolId: faker.guid.toString()),
    ClassRoom(
        id: "S1",
        name: "SS1",
        classLevel: "Secondary",
        teacherId: faker.guid.toString(),
        classArm: "B",
        schoolId: faker.guid.toString()),
    ClassRoom(
        id: "S2",
        name: "SS2",
        classLevel: "Secondary",
        teacherId: faker.guid.toString(),
        classArm: "C",
        schoolId: faker.guid.toString()),
  ];
}
