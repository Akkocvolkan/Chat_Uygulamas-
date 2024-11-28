class Manager {
  int? id;
  String firstname;
  String lastname;
  int grade;
  String status;

  // Positional ID ile constructor
  Manager.withId({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.grade,
    this.status = 'Geçti',
  });
  
  // ID olmadan constructor
  Manager({
    required this.firstname,
    required this.lastname,
    required this.grade,
    this.status = 'Geçti',
  });
  Manager.withoutInfo();

  static withoutinfo() {}
}


