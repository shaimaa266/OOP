import 'dart:io';

//base/super class ..
class Profiles {
  //defination of basic attributes
  String? name;
  int? id;
  int? age;
  String? phone;
  String? e_mail;
  String? password;
  String? address;
  void info(
    // a welcome method for all classes
    String name,
    int id,
    int age,
    String e_mail,
    String password,
    String address,
    String phone,
  ) {
    this.name = name;
    this.id = id;
    this.e_mail = e_mail;
    this.password = password;
    this.address = address;
  }
  //no real stored data base so let's use input/output technique

  void SignUp(String e_mail, String password, String name, int age,
      String address, String phone) {
    this.e_mail = e_mail;
    this.password = password;
    this.name = name;
    this.id = id;
    this.address = address;
    this.phone = phone;
    this.age = age;
    print('enter your email ');
    var in_email = stdin.readLineSync()!;
    print('enter your password ');
    var in_pass = stdin.readLineSync()!;
    if (in_email == e_mail && in_pass == password) {
      print('your email is $e_mail  with password $password');
      print('welcome,your data have been saved  successfully!');
    }
  }

  void Signin(String e_mail, String password) {
    this.e_mail = e_mail;
    this.password = password;
    print('enter your email ');
    var input_email = stdin.readLineSync()!;
    print('enter your password ');
    var input_pass = stdin.readLineSync()!;
    if (input_email == e_mail && input_pass == password) {
      print('welcome,login successfully!');
    } else {
      print('something is wrong...try again');
    }
  }

  void UpdateData(String e_mail, String password,
      {String? name,
      int? age,
      String? grade,
      double? rate,
      String? phone,
      String? address}) {
    print('enter your e_mail ');
    var input_email = stdin.readLineSync()!;
    print('enter your password ');
    var input_pass = stdin.readLineSync()!;
    if (input_email == e_mail && input_pass == password) {
      this.name = name;
      this.age = age;
      this.phone = phone;
      this.address = address;
    } else {
      print('Wrong data ....try again ');
    }
  }

  void LogOut(String e_mail, String password) {
    //pages[0]=pages[1];
    //navigator to a previous page or leave the app;
    print('logout successfully ');
    this.e_mail = ' ';
    this.password = ' ';
  }
}
