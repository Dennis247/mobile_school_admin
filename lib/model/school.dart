import 'package:flutter/material.dart';

class School {
  final String id;
  final String schoolName;
  final String address;
  final String email;
  final String phone;
  final String schoolAdmin;

  School(
      {@required this.id,
      @required this.schoolName,
      @required this.address,
      @required this.email,
      @required this.phone,
      @required this.schoolAdmin});
}
