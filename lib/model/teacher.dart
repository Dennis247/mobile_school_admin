import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Teacher {
  final String id;
  final String firstNae;
  final String lastName;
  final String middleName;
  final String classId;
  final String schoolId;
  final String imageUrl;

  Teacher({
    @required this.id,
    @required this.firstNae,
    @required this.lastName,
    @required this.middleName,
    @required this.classId,
    @required this.schoolId,
    @required this.imageUrl,
  });

  static final getTeacherLIst = [
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "J1",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "J2",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "J2",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "J2",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "J3",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "J3",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "J3",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "S1",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "S1",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "S1",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "S2",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
    Teacher(
        id: faker.guid.guid(),
        firstNae: faker.person.firstName(),
        lastName: faker.person.lastName(),
        middleName: faker.person.name(),
        classId: "S2",
        schoolId: faker.guid.guid(),
        imageUrl: "assets/images/user.png"),
  ];
}
