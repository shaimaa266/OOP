import 'dart:io';

import 'center-place.dart';
import 'courses.dart';
import 'profiles.dart';
import 'students.dart';

class Assistant extends Profiles {
  //single inheritance
  List<String> attends = [];
  int? exp_years;
  Assistant(this.exp_years);

  @override
  void info(String name, int id, int age, String e_mail, String password,
      String address, String phone) {
    super.info(name, id, age, e_mail, password, address, phone);
    this.exp_years = exp_years;

    print(
        'hi ,it\'s $name , with $exp_years experience years  at the age of $age...to contact me call$phone,$e_mail ');
  }

  @override
  void SignUp(String e_mail, String password, String name, int age,
      String address, String phone) {
    super.SignUp(e_mail, password, name, age, address, phone);
  }

  @override
  void Signin(String e_mail, String password) {
    super.Signin(e_mail, password);
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

  void UpdatePlace(Courses courses, Place place) {
    print('enter the new id ');
    var string = (stdin.readLineSync()!);
    print('enter the new id ');
    int intt = int.parse(stdin.readLineSync()!);
    for (string in courses.name) {
      for (intt in place.room_id!) {
        courses.place_room[string] = intt;
      }
    }
  }

  void Check_attend(Students students) {
    //compare who select course with who actually attend .
    print('enter attendents name');
    var atten = stdin.readLineSync()!;
    attends.add(atten);
    for (int i = 0; i < attends.length; i++) {
      if (attends[i] == attends[i]) {
        print(' all students attend ');
      } else {
        Set set1 = Set.from(students.sCourses);
        Set set2 = Set.from(attends);
        Set difference = set1.difference(set2);
        print('$difference  don\'t attend ');
      }
    }
  }

  @override
  void LogOut(String e_mail, String password) {
    super.LogOut(e_mail, password);
  }
}
