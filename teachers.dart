import 'dart:io';
import 'courses.dart';
import 'profiles.dart';

class Teachers extends Profiles {
  //single inheritance ..
  List<String> c_name = ['it', 'cs', 'progremming', 'arch'];
  String? uni_name;
  String? dep;
  String? gradution_date;
  String? _salary; //need setter,getter??.
  double? rating;
  Courses? courses;
  Teachers(this.c_name, this.uni_name, this.gradution_date, this.dep,
      this.rating, this._salary);

  @override //polymerphism..
  void info(String name, int id, int age, String e_mail, String password,
      String address, String phone) {
    super.info(name, id, age, e_mail, password, address, phone);
    this.dep = dep;
    this.uni_name = uni_name;
    this.gradution_date = gradution_date;
    this._salary = _salary;
    this.rating = rating;
    print(
        ' hi i\'m $name  ,$age years old ,i graduated from$uni_name  $dep department in $gradution_date i\'ve got $rating rating with $_salary as a salary ');
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
    this.rating = rating;
    print('your data are updated successfully ');
  }

  void addCourse(Courses courses) {
    var input = stdin.readLineSync()!;
    List<String> t = [];
    t.add(input);
    for (int i = 0; i < t.length; i++) {
      if (t[i] == c_name[i]) {
        t.add(input);
        c_name.add(input);
      } else {
        print('enter valid course');
      }
    }

    print(' $c_name  are our courses');
    print('${c_name[-1]} is new added');
  }

  void delCourse(Courses courses) {
    print('enter a new course to add');
    var input = stdin.readLineSync()!;
    List<String> t = [];
    t.add(input);
    for (int i = 0; i < t.length; i++) {
      if (t[i] == c_name[i]) {
        t.remove(input);
        c_name.remove(input);
      } else {
        print('enter valid course');
      }
    }
    c_name.remove(input);
    print('$input is removed');
  }

  @override
  void LogOut(String e_mail, String password) {
    super.LogOut(e_mail, password);
    print('log out ');
  }
}
