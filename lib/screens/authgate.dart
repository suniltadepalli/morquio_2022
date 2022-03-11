// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
//import 'package:morquio_2022/models/json_parse.dart';
import 'package:morquio_2022/screens/patient_list.dart';

// ignore: must_be_immutable
class AuthGate extends StatelessWidget {
  AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const morquioClientId =
        '874545099818-7dcbegi6mjc2poqsq2m8hvpckg3uqjl4.apps.googleusercontent.com';

    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // User is not signed in
          if (!snapshot.hasData) {
            // ignore: prefer_const_constructors
            return SignInScreen(
              subtitleBuilder: (context, action) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(action == AuthAction.signIn
                      ? 'Welcome to the Morquio App! Please sign in to continue'
                      : 'Welcome to the Morquio App! Please create an account to continue'),
                );
              },
              footerBuilder: (context, _) {
                return const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    'By signing in, you agree to our terms and conditions.',
                    style: TextStyle(color: Colors.grey),
                  ),
                );
              },
              providerConfigs: [
                EmailProviderConfiguration(),
                GoogleProviderConfiguration(clientId: morquioClientId)
              ],
            );
          }
          // Render your application if authenticated
          return PatientList();
        });
  }
}
