class StudentValidationMixin {
  String? validateFirstName(String value) {
    if (value.length < 2) {
      return 'İsim en az 2 karakter olmalıdır';
    }
    return null;  // Hata yoksa null döner
  }
  String? validateLastName(String value) {
    if (value.length < 2) {
      return 'İsim en az 2 karakter olmalıdır';
    }
    return null;  // Hata yoksa null döner
  }
  String? validategrade(String value) {
    var grade=int.parse(value) ;{
      if(grade<0 || grade>100){
        return 'Grade 0-100 arasında olmalıdır';
      }
      
    }
    return null;  // Hata yoksa null döner
  }
}
