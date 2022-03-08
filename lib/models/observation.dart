abstract class Observation {
  final String identifier;
  final String display;
  final DateTime effectiveDateTime;
  final String? referenceToPatient;
  final String? referenceToEncounter;
  final String? referenceToPerformer;

  Observation({
    required this.identifier,
    required this.display,
    required this.effectiveDateTime,
    this.referenceToPatient,
    this.referenceToEncounter,
    this.referenceToPerformer,
  });
}

class BodyHeight extends Observation {
  final double value;

  BodyHeight(this.value)
      : super(
          identifier: '',
          display: '',
          effectiveDateTime: DateTime.now(),
        );
}
