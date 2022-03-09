import 'package:fhir/r4.dart';

List<Patient> patients = [
  Patient(
    name: <HumanName>[
      HumanName(
        family: 'Jadeja',
        given: [
          'Ravindra',
          'Anirudh',
        ],
      ),
    ],
    birthDate: Date(DateTime(1988, 12, 6)),
  ),
];
