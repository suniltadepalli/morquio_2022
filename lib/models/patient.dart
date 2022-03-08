class Patient {
  final String id;
  final String familyName;
  final String givenName;
  final String contactEmail;
  final DateTime dateOfBirth;
  // Add calculated age here
  final String? address;
  final String? state;
  final String? city;
  final String? country;
  final String? mobileNumber;

  Patient(
      {required this.id,
      required this.familyName,
      required this.givenName,
      required this.contactEmail,
      required this.dateOfBirth,
      this.address,
      this.state,
      this.city,
      this.country,
      this.mobileNumber});

  static List<Patient> patients = [
    Patient(
      id: '1',
      familyName: 'Jadeja',
      givenName: 'Ravindra',
      contactEmail: 'ravindra.jadeja@gmail.com',
      dateOfBirth: DateTime(1988, 12, 6),
    ),
    Patient(
      id: '2',
      familyName: 'Ravichandran',
      givenName: 'Ashwin',
      contactEmail: 'ravichandran.ashwin@gmail.com',
      dateOfBirth: DateTime(1986, 7, 17),
    ),
    Patient(
      id: '3',
      familyName: 'Siraj',
      givenName: 'Mohammed',
      contactEmail: 'mohammed.siraj@gmail.com',
      dateOfBirth: DateTime(1994, 3, 13),
    ),
    Patient(
      id: '4',
      familyName: 'Kohli',
      givenName: 'Virat',
      contactEmail: 'virat.kohli@gmail.com',
      dateOfBirth: DateTime(1988, 11, 5),
    ),
    Patient(
      id: '5',
      familyName: 'Sharma',
      givenName: 'Rohit',
      contactEmail: 'rohit.sharma@gmail.com',
      dateOfBirth: DateTime(1987, 4, 30),
    ),
  ];
}
