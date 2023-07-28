import 'dart:io';
import 'courses.dart';
import 'profiles.dart';
import 'teachers.dart';

class Students extends Profiles {
  //single iheritance...
  String? grade;
  List<String> sCourses = [''];
  double? rate;
  bool? is_old = false;
  bool isSelected = true;

  @override
  void info(String name, int id, int age, String password, String address,
      String phone, String e_mail) {
    super.info(name, id, age, e_mail, password, address, phone);
    this.grade = grade;
    this.rate = rate;
    print(
        ' student name is $name who has $age years old and live in$address  ,in $grade grade ,email :$e_mail ,phone $phone ');
  }

  @override
  void Signin(String e_mail, String password) {
    super.Signin(e_mail, password);
  }

  @override
  void LogOut(String e_mail, String password) {
    super.LogOut(e_mail, password);
  }

  @override
  void UpdateData(String e_mail, String password,
      {String? name,
      int? age,
      String? grade,
      double? rate,
      String? phone,
      String? address}) {
    super.UpdateData(e_mail, password);
    print('your data are updated successfully ');
  }

  void rating(Teachers teachers) {
    print('enter your rate ');
    var int_rate = double.parse(stdin.readLineSync()!);
    rate = int_rate;
    teachers.rating = rate;
    print('$name rates ${teachers.name}with $rate');
  }

  void SelectCourse(Courses courses) {
    print('select your course ');
    var inputed = stdin.readLineSync()!;
    List<String> s = [];
    s.add(inputed);
    while (isSelected) {
      for (int i = 0; i < s.length; i++) {
        if (s[i] == courses.name[i]) {
          s.add(inputed);
          print(' course  is added ');
        } else {
          print('course entered is unvalid ,try again  ');
        }
      }
    }
    isSelected = false;
  }

  void RemoveCourse(Courses courses) {
    print('select a course to be removed');
    var inputed_del = stdin.readLineSync()!;
    List<String> s = [];
    s.add(inputed_del);
    while (isSelected) {
      for (int i = 0; i < s.length; i++) {
        if (s[i] == courses.name[i]) {
          s.add(inputed_del);
          print(' course  is removed ');
        } else {
          print('course entered isn\'t in your list  ,try again  ');
        }
      }
    }
  }
}
