import 'students.dart';

class NewStudents extends Students {
  //hierarchical inheritance
  void isnew(Students students) {
    while (is_old = false) {
      print('welcome ');
    }
    is_old = true;
  }
  void Sinfo(String name, int id, String e_mail, int age, String password,
      String address, String phone) {
    super.info(name, id, age, e_mail, password, address, phone);
    print('iam $name  in$grade iam a new student ');
  }
//supposed to go to students page.

 @override
  void SignUp(String e_mail, String password, String name, int age,
      String address, String phone) {
    super.SignUp(e_mail, password, name, age, address, phone);
  }
}
