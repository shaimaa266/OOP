import 'teachers.dart';

class Courses {
  List<String> name = [
    'it',
    'cs',
    'arch',
    'sw-design',
    'programming',
    'networks'
  ];
  int? id;
  Map<String, int> place_room = {
    "it": 1,
    "cs": 2,
    "arch": 3,
    "sw-design": 4,
    "programming": 5,
    "networks": 6
  };
  String? date;
  String? star_time;
  double? c_lenght;
  bool is_available = true;
  Courses({
    required this.name,
    required this.place_room,
    required this.c_lenght,
    required this.date,
    required this.id,
    required this.star_time,
    required this.is_available,
  });

  void showCourses(Teachers teachers) {
    print(' available courses area ${teachers.c_name}');
  }

  void course_available(Teachers teachers) {
    while (is_available) {
      for (int i = 0; i < name.length; i++) {
        if (name[i] == teachers.c_name[i]) {
          print('is available ');
        } else {
          print('not available');
        }
      }
    }
  }
}
