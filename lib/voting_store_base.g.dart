// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voting_store_base.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VotingStore on _VotingStoreBase, Store {
  Computed<bool>? _$isEligibleComputed;

  @override
  bool get isEligible =>
      (_$isEligibleComputed ??= Computed<bool>(() => super.isEligible,
              name: '_VotingStoreBase.isEligible'))
          .value;

  late final _$ageAtom = Atom(name: '_VotingStoreBase.age', context: context);

  @override
  int get age {
    _$ageAtom.reportRead();
    return super.age;
  }

  @override
  set age(int value) {
    _$ageAtom.reportWrite(value, super.age, () {
      super.age = value;
    });
  }

  late final _$_VotingStoreBaseActionController =
      ActionController(name: '_VotingStoreBase', context: context);

  @override
  void setAge(int newAge) {
    final _$actionInfo = _$_VotingStoreBaseActionController.startAction(
        name: '_VotingStoreBase.setAge');
    try {
      return super.setAge(newAge);
    } finally {
      _$_VotingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
age: ${age},
isEligible: ${isEligible}
    ''';
  }
}
