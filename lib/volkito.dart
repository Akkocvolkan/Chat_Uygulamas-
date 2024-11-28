class Manager {
  int? id;  // ID boş olabilir
  String firstname;
  String lastname;
  int grade;
  String status;

  // ID içeren constructor
  Manager.withId({
    this.id,  // ID'nin opsiyonel olduğunu belirtiyoruz
    required this.firstname,
    required this.lastname,
    required this.grade,
    this.status = 'Geçti',  // Varsayılan değer 'Geçti'
  });

  // ID olmadan kullanılan constructor
  Manager({
    required this.firstname,
    required this.lastname,
    required this.grade,
    this.status = 'Geçti',  // Varsayılan değer 'Geçti'
  });
}
