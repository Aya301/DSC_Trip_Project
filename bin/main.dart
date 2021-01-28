import 'dart:io';

main() {
  int z;
  print('           Hello');
  print('      Welcome with us');
  print('Choose One Of This Tasks');
  print(' 1- Add Trip.          4- View Trips.');
  print(' 2- Edit Trip.         5- Search Trip.');
  print(' 3- Delete Trip.       6- Reverse.');
  print('Please Enter The Number Of The Operation You Want ^_^');
  for (int i = 0; i < 6; i++) {
    var Choose = stdin.readLineSync();
    z = int.parse(Choose);
    if (z < 1 || z > 6)
      print('That Number Is Wrong, Please Enter One Of The Previous Numbers');
    if (z >= 1 && z < 7) break;
  }
  trip x = new trip();
  switch (z) {
    case 1:
      x.addtrip();
      break;
    case 2:
      x.edittrip();
      break;
    case 3:
      x.deletetrip();
      break;
    case 4:
      x.viewtrip();
      break;
    case 5:
      x.searchtrip();
      break;
    case 6:
      x.reversetrip();
      break;
  }
}

class trip {
  int ID;
  String Location;
  int PassengerLimit;
  int Data;
  num price;
  List user = [
    ' ID ',
    'Location ',
    'PassengerLimit ',
    '      Date       ',
    '  Price '
  ];
  List data5 = [
    ' 1 ',
    '  Dahab  ',
    '        5       ',
    ' 20 / 10 / 2020  ',
    '   1000 '
  ];
  void addtrip() {
    print('       Add A New Trip');
    print('List of Excursions');
    print(user);
    print(data5);
    print('=> ID:');
    var C1 = stdin.readLineSync();
    print('=> Location:');
    var C2 = stdin.readLineSync();
    print('=> Passenger Limit:');
    var C3 = stdin.readLineSync();
    print('=> Date(day/month/year):');
    var C4 = stdin.readLineSync();
    print('=> Price:');
    var C5 = stdin.readLineSync();
    List user1 = [C1, C2, C3, C4, C5];
    print('         ');
    print('List of Excursions');
    print(user);
    print(data5);
    print(user1);
    print('');
    print('Thanks you, The Flight has been Successfully registered.');
    print('If You Want To Return To The Task List Press "1",'
        ' If You Want To Exit Press"2".');
    for (int b = 1; b <= 2; b++) {
      var C6 = stdin.readLineSync();
      b = int.parse(C6);
      if (b == 1) print(main());
      if (b == 2) print('Finish');
    }
    print('Thanks You');
  }

  void edittrip() {
    print('       Edit In The Trips');
    print('List of Excursions');
    print(user);
    print(data5);
    print('Enter The ID Number Of The Flight To Be Modified');
    var C10 = stdin.readLineSync();
    print('On Any Field You Want To Amend:');
    print('1- ID ');
    print('2- Location');
    print('3- Passenger Limit');
    print('4- Date');
    print('5- Price');
    var C7 = stdin.readLineSync();
    print('The Edit');
    var C8 = stdin.readLineSync();
    print('Modified Successfully');
    print('If You Want To Return To The Task List Press "1",'
        ' If You Want To Exit Press"2".');
    for (int b = 1; b <= 2; b++) {
      var C6 = stdin.readLineSync();
      b = int.parse(C6);
      if (b == 1) print(main());
      if (b == 2) print('Finish');
    }
    print('Thanks You');
  }

  void deletetrip() {
    print('       Deletion From Trips');
    print('List of Excursions');
    print(user);
    print(data5);
    print('On Any Field You Want To Delete:');
    print('=> ID ');
    var C7 = stdin.readLineSync();
    print('Delete Successfully');
    print('');
    print('List of Excursions');
    print(user);
    print('');
    print('If You Want To Return To The Task List Press "1",'
        ' If You Want To Exit Press"2".');
    for (int b = 1; b <= 2; b++) {
      var C6 = stdin.readLineSync();
      b = int.parse(C6);
      if (b == 1) print(main());
      if (b == 2) print('Finish');
    }
    print('Thanks You');
  }

  void viewtrip() {
    print('       Available Trips');
    print('List of Excursions');
    print(user);
    print(data5);
    print('If You Want To Return To The Task List Press "1",'
        ' If You Want To Exit Press"2".');
    for (int b = 1; b <= 2; b++) {
      var C6 = stdin.readLineSync();
      b = int.parse(C6);
      if (b == 1) print(main());
      if (b == 2) print('Finish');
    }
    print('Thanks You');
  }

  void searchtrip() {
    int d;
    print('Type The Price You Want To Search For:');
    var C9 = stdin.readLineSync();
    d = int.parse(C9);
    switch (d) {
      case 1000:
        print(data5);
        break;
      default:
        print('There Is NO Trips At This Price');
    }
    print('If You Want To Return To The Task List Press "1",'
        ' If You Want To Exit Press"2".');
    for (int b = 1; b <= 2; b++) {
      var C6 = stdin.readLineSync();
      b = int.parse(C6);
      if (b == 1) print(main());
      if (b == 2) print('Finish');
    }
    print('Thanks You');
  }

  void reversetrip() {
    print('       Book Trip');
    print('List of Excursions');
    List data = [
      ' ID ',
      'Location ',
      'Passenger Limit ',
      '      Date       ',
      '  Price '
    ];
    List data1 = [
      '  1 ',
      '  Dahab  ',
      '        5       ',
      ' 20 / 10 / 2020  ',
      '   5000 '
    ];
    print(data);
    print(data1);
    print('=> ID:');
    var C1 = stdin.readLineSync();
    print('=> Name:');
    var C2 = stdin.readLineSync();
    print('=> Age:');
    var C3 = stdin.readLineSync();
    print('=> Phone Number:');
    var C4 = stdin.readLineSync();
    print('=> your Email');
    var C5 = stdin.readLineSync();
    print('Reservation Was Successful.');
    print('If You Want To Return To The Task List Press "1",'
        ' If You Want To Exit Press"2".');
    for (int b = 1; b <= 2; b++) {
      var C6 = stdin.readLineSync();
      b = int.parse(C6);
      if (b == 1) print(main());
      if (b == 2) print('Finish');
    }
    print('Thanks You');
  }
}
