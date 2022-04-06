// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:irecognize/models/person_model.dart';

const String APP_NAME = 'iRecognize';

const double BIO_BAR_HEIGHT = 1.9 * kToolbarHeight;
const double MUTUAL_BAR_HEIGHT = 1.3 * kToolbarHeight;

const String MY_FRIENDS_PAGE = 'myFriends';
const String PERSON_PAGE = 'person';

const double PROFILE_PIC_DIMENS = 90.0;
const double PROFILE_PIC_DIMENS_SM = 40.0;

const double CIRCLE_BORDER_RADIUS = 50.0;

// TEMPORARY HARD-CODED DATA
const String TEST_USER_IMG = r'https://randomuser.me/api/portraits/men/32.jpg';
const String TEMP_TAGLINE =
    "I'm a 23-yr old BYU student.  I wanna meet new people!";
PersonModel FAKE_CURRENT_USER =
    PersonModel(999, 'Brad Pitt', TEMP_TAGLINE, TEST_USER_IMG);

List<PersonModel> FAKE_PEOPLE = [
  PersonModel(0, 'Billy Joe', TEMP_TAGLINE, TEST_USER_IMG),
  PersonModel.noImage(1, 'Jake Snake', TEMP_TAGLINE),
  PersonModel(2, 'Lebron James', TEMP_TAGLINE, TEST_USER_IMG),
  PersonModel(3, 'Russell Westbrook', TEMP_TAGLINE, TEST_USER_IMG),
  PersonModel(4, 'Donovan Mitchell', TEMP_TAGLINE, TEST_USER_IMG),
  PersonModel(5, 'Blake Hughes', TEMP_TAGLINE, TEST_USER_IMG),
];
