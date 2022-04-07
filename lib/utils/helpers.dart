import 'package:flutter/material.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/utils/constants.dart';

// Generic filter function

List<PersonModel> getListWithoutPerson(
    List<PersonModel> list, PersonModel person) {
  return list.where((p) => !p.name.contains(person.name)).toList();
}

// Specific functions calling generic

List<PersonModel> getMyFriends() {
  return getListWithoutPerson(FRIENDS_NETWORK, CURRENT_USER);
}

List<PersonModel> getTheirFriends(PersonModel person) {
  if (!FRIENDS_NETWORK.contains(person)) return [];
  return getListWithoutPerson(FRIENDS_NETWORK, person);
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
