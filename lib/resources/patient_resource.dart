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
    gender: PatientGender.male,
    address: <Address>[
      Address(
        text: 'Rajastan Royal House',
        city: 'Jamnagar',
        state: 'Gujarat',
        country: 'India',
        postalCode: '361001',
      )
    ],
    identifier: <Identifier>[
      Identifier(
        use: IdentifierUse.official,
        system: FhirUri('https://healthid.ndhm.gov.in'),
        value: 'ravijadeja@ndhm',
      ),
      Identifier(
        use: IdentifierUse.official,
        system: FhirUri('https://healthid.ndhm.gov.in'),
        value: '12345678912345', // 14-digit-number
      ),
      Identifier(
        use: IdentifierUse.official,
        system: FhirUri('https://uidai.gov.in'),
        value: '123412341234',
      ), // 12-digit- aadhar-number,
    ],
    telecom: <ContactPoint>[
      ContactPoint(
        system: ContactPointSystem.phone,
        value: '+919810012345', //Mobile Number
        rank: PositiveInt(1),
      ),
      ContactPoint(
        system: ContactPointSystem.email,
        value: 'ravindra.jadeja@gmail.com',
        rank: PositiveInt(2),
      ),
    ],
    contact: <PatientContact>[
      PatientContact(
        relationship: [
          CodeableConcept(
            coding: [
              Coding(
                system: FhirUri('http://snomed.info/sct'),
                code: Code('66839005'),
                display: 'Father',
              ),
            ],
          ),
        ],
        name: HumanName(
          family: 'Jadeja',
          given: [
            'Anirudh',
          ],
        ),
        telecom: <ContactPoint>[
          ContactPoint(
            system: ContactPointSystem.phone,
            value: '+919810054321',
            rank: PositiveInt(1),
          ),
          ContactPoint(
            system: ContactPointSystem.email,
            value: 'anirudh.jadeja@gmail.com',
            rank: PositiveInt(2),
          ),
        ],
      )
    ],
  ),
  Patient(
    name: <HumanName>[
      HumanName(
        family: 'Sharma',
        given: [
          'Rohit',
        ],
      ),
    ],
    birthDate: Date(DateTime(1987, 4, 30)),
    gender: PatientGender.male,
    address: <Address>[
      Address(
        text: 'Mumbai Royal',
        city: 'Mumbai',
        state: 'Maharashtra',
        country: 'India',
        postalCode: '400004',
      )
    ],
    identifier: <Identifier>[
      Identifier(
        use: IdentifierUse.official,
        system: FhirUri('https://healthid.ndhm.gov.in'),
        value: 'rohitsharma@ndhm',
      ),
      Identifier(
        use: IdentifierUse.official,
        system: FhirUri('https://healthid.ndhm.gov.in'),
        value: '12345678912345', // 14-digit-number
      ),
      Identifier(
        use: IdentifierUse.official,
        system: FhirUri('https://uidai.gov.in'),
        value: '123412341234',
      ), // 12-digit- aadhar-number,
    ],
    telecom: <ContactPoint>[
      ContactPoint(
        system: ContactPointSystem.phone,
        value: '+919810012345', //Mobile Number
        rank: PositiveInt(1),
      ),
      ContactPoint(
        system: ContactPointSystem.email,
        value: 'rohit.sharma@gmail.com',
        rank: PositiveInt(2),
      ),
    ],
    contact: <PatientContact>[
      PatientContact(
        relationship: [
          CodeableConcept(
            coding: [
              Coding(
                system: FhirUri('http://snomed.info/sct'),
                code: Code('66839005'),
                display: 'Father',
              ),
            ],
          ),
        ],
        name: HumanName(
          family: 'Sharma',
          given: [
            'Mohit',
          ],
        ),
        telecom: <ContactPoint>[
          ContactPoint(
            system: ContactPointSystem.phone,
            value: '+919810054321',
            rank: PositiveInt(1),
          ),
          ContactPoint(
            system: ContactPointSystem.email,
            value: 'mohit.sharma@gmail.com',
            rank: PositiveInt(2),
          ),
        ],
      )
    ],
  ),
  Patient(
    name: <HumanName>[
      HumanName(
        family: 'Kohli',
        given: [
          'Virat',
        ],
      ),
    ],
    birthDate: Date(DateTime(1988, 11, 5)),
    gender: PatientGender.male,
    address: <Address>[
      Address(
        text: 'Royal Challenger',
        city: 'Bengaluru',
        state: 'Karnataka',
        country: 'India',
        postalCode: '560001',
      )
    ],
    identifier: <Identifier>[
      Identifier(
        use: IdentifierUse.official,
        system: FhirUri('https://healthid.ndhm.gov.in'),
        value: 'viratkohli@ndhm',
      ),
      Identifier(
        use: IdentifierUse.official,
        system: FhirUri('https://healthid.ndhm.gov.in'),
        value: '12345678912345', // 14-digit-number
      ),
      Identifier(
        use: IdentifierUse.official,
        system: FhirUri('https://uidai.gov.in'),
        value: '123412341234',
      ), // 12-digit- aadhar-number,
    ],
    telecom: <ContactPoint>[
      ContactPoint(
        system: ContactPointSystem.phone,
        value: '+919810012345', //Mobile Number
        rank: PositiveInt(1),
      ),
      ContactPoint(
        system: ContactPointSystem.email,
        value: 'virat.kohli@gmail.com',
        rank: PositiveInt(2),
      ),
    ],
    contact: <PatientContact>[
      PatientContact(
        relationship: [
          CodeableConcept(
            coding: [
              Coding(
                system: FhirUri('http://snomed.info/sct'),
                code: Code('66839005'),
                display: 'Father',
              ),
            ],
          ),
        ],
        name: HumanName(
          family: 'Kohli',
          given: [
            'Prem',
          ],
        ),
        telecom: <ContactPoint>[
          ContactPoint(
            system: ContactPointSystem.phone,
            value: '+919810054321',
            rank: PositiveInt(1),
          ),
          ContactPoint(
            system: ContactPointSystem.email,
            value: 'prem.kohli@gmail.com',
            rank: PositiveInt(2),
          ),
        ],
      )
    ],
  )
];
