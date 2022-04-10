import 'package:flutter/material.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/utils/constants.dart';

List<PersonModel> getMyFriends() {
  List<PersonModel> allMyFriends = BYU_FRIENDS_NETWORK;
  allMyFriends.addAll(FRIENDS_FROM_HOME_NETWORK);
  return allMyFriends;
}

List<PersonModel> getTheirFriends(PersonModel person) {
  if (BYU_FRIENDS_NETWORK.contains(person)) {
    return getListWithoutPerson(BYU_FRIENDS_NETWORK, person);
  }
  if (FRIENDS_FROM_HOME_NETWORK.contains(person)) {
    return getListWithoutPerson(FRIENDS_FROM_HOME_NETWORK, person);
  }
  return [];
}

List<PersonModel> getListWithoutPerson(
    List<PersonModel> list, PersonModel person) {
  return list.where((p) => !p.name.contains(person.name)).toList();
}

// For person search
List<PersonModel> searchByPerson(String query) {
  return ALL_PEOPLE
      .where(
          (person) => person.name.toLowerCase().contains(query.toLowerCase()))
      .toList();
}

void goToPage(BuildContext context, dynamic pageToVisit) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageToVisit),
  );
}
