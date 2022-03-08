import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/patient.dart';

class PatientList extends StatelessWidget {
  const PatientList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List of Patients'),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: Patient.patients.length,
              itemBuilder: (BuildContext context, int index) {
                return buildPatientCard(Patient.patients[index]);
              }),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.exit_to_app),
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
        ),
      ),
    );
  }
}

Widget buildPatientCard(Patient patient) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            patient.familyName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5.0),
          Text(patient.givenName),
          const SizedBox(height: 5.0),
          Text(DateFormat.yMMMMd().format(patient.dateOfBirth)),
        ],
      ),
    ),
  );
}
