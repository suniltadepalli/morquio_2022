import 'dart:async';
import 'package:flutter/material.dart';

class MorquioTab {
  static const consent = 0;
  static const patient = 1;
  static const practitioner = 2;
}

class AppStateManager extends ChangeNotifier {
  bool _initialized = false;
  bool _signedIn = false;
  bool _consentAgreed = false;
  int _selectedTab = MorquioTab.consent;

  bool get isInitialized => _initialized;
  bool get isSignedIn => _signedIn;
  bool get isConsentAgreed => _consentAgreed;
  int get getSelectedTab => _selectedTab;
}
