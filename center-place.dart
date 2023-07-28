import 'courses.dart';

class Place {
  String? name;
  String? location;
  List<int>? room_id = [1, 2, 3, 4, 5, 6];
  int? roon_nums = 6;
  bool is_available = true;
  Place(this.name, this.location, this.roon_nums);
  void info() {
    print('it\'s $name center that is in $location with $roon_nums');
  }

  void get_available_room(Courses courses) {
    if ((courses.place_room.length) - 1 != '') {
      print('there is available room');
      is_available = true;
    } else {
      print('no available rooms');
      is_available = false;
    }
  }
}
