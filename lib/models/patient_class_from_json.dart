// To parse this JSON data, do
//
//     final patient = patientFromJson(jsonString);

import 'dart:convert';

Patient patientFromJson(String str) => Patient.fromJson(json.decode(str));

String patientToJson(Patient data) => json.encode(data.toJson());

class Patient {
  Patient({
    required this.id,
    required this.resourceType,
    required this.address,
    required this.birthDate,
    required this.gender,
    required this.identifier,
    required this.name,
    required this.telecom,
    required this.contact,
  });

  String id;
  String resourceType;
  List<Address> address;
  DateTime birthDate;
  String gender;
  List<Identifier> identifier;
  List<Name> name;
  List<Telecom> telecom;
  List<Contact> contact;

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
        id: json["id"],
        resourceType: json["resourceType"],
        address:
            List<Address>.from(json["address"].map((x) => Address.fromJson(x))),
        birthDate: DateTime.parse(json["birthDate"]),
        gender: json["gender"],
        identifier: List<Identifier>.from(
            json["identifier"].map((x) => Identifier.fromJson(x))),
        name: List<Name>.from(json["name"].map((x) => Name.fromJson(x))),
        telecom:
            List<Telecom>.from(json["telecom"].map((x) => Telecom.fromJson(x))),
        contact:
            List<Contact>.from(json["contact"].map((x) => Contact.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "resourceType": resourceType,
        "address": List<dynamic>.from(address.map((x) => x.toJson())),
        "birthDate":
            "${birthDate.year.toString().padLeft(4, '0')}-${birthDate.month.toString().padLeft(2, '0')}-${birthDate.day.toString().padLeft(2, '0')}",
        "gender": gender,
        "identifier": List<dynamic>.from(identifier.map((x) => x.toJson())),
        "name": List<dynamic>.from(name.map((x) => x.toJson())),
        "telecom": List<dynamic>.from(telecom.map((x) => x.toJson())),
        "contact": List<dynamic>.from(contact.map((x) => x.toJson())),
      };
}

class Address {
  Address({
    required this.city,
    required this.country,
    required this.line,
    required this.postalCode,
    required this.state,
  });

  String city;
  String country;
  List<String> line;
  String postalCode;
  String state;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        city: json["city"],
        country: json["country"],
        line: List<String>.from(json["line"].map((x) => x)),
        postalCode: json["postalCode"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "city": city,
        "country": country,
        "line": List<dynamic>.from(line.map((x) => x)),
        "postalCode": postalCode,
        "state": state,
      };
}

class Contact {
  Contact({
    required this.relationship,
    required this.name,
    required this.telecom,
  });

  List<Relationship> relationship;
  Name name;
  List<Telecom> telecom;

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        relationship: List<Relationship>.from(
            json["relationship"].map((x) => Relationship.fromJson(x))),
        name: Name.fromJson(json["name"]),
        telecom:
            List<Telecom>.from(json["telecom"].map((x) => Telecom.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "relationship": List<dynamic>.from(relationship.map((x) => x.toJson())),
        "name": name.toJson(),
        "telecom": List<dynamic>.from(telecom.map((x) => x.toJson())),
      };
}

class Name {
  Name({
    required this.family,
    required this.given,
  });

  String family;
  List<String> given;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        family: json["family"],
        given: List<String>.from(json["given"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "family": family,
        "given": List<dynamic>.from(given.map((x) => x)),
      };
}

class Relationship {
  Relationship({
    required this.text,
  });

  String text;

  factory Relationship.fromJson(Map<String, dynamic> json) => Relationship(
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
      };
}

class Telecom {
  Telecom({
    required this.system,
    required this.use,
    required this.value,
  });

  String system;
  String use;
  String value;

  factory Telecom.fromJson(Map<String, dynamic> json) => Telecom(
        system: json["system"],
        use: json["use"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "system": system,
        "use": use,
        "value": value,
      };
}

class Identifier {
  Identifier({
    required this.system,
    required this.value,
  });

  String system;
  String value;

  factory Identifier.fromJson(Map<String, dynamic> json) => Identifier(
        system: json["system"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "system": system,
        "value": value,
      };
}
