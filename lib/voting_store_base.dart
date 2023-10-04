import 'package:mobx/mobx.dart';

part 'voting_store_base.g.dart';

class VotingStore = _VotingStoreBase with _$VotingStore;


abstract class _VotingStoreBase with Store {
  @observable
  int age = 0;

  @computed
  bool get isEligible => age >= 18;

  @action
  void setAge(int newAge) {
    age = newAge;
  }
}
