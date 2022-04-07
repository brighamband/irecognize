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

// Start of hard-coded data reused by people
const String S3_BASE_URL =
    'https://irecognize-profile-pics.s3.us-east-2.amazonaws.com/';
const String DEFAULT_IMG_URL = S3_BASE_URL + 'DEFAULT_IMG_URL.jpg';
const String TEST_USER_IMG = r'https://randomuser.me/api/portraits/men/32.jpg';
const String TEMP_TAGLINE =
    "I'm a 23-yr old BYU student.  I wanna meet new people!";

// Start of hard-coded people

PersonModel CURRENT_USER = PersonModel('Brigham Andersen', TEMP_TAGLINE,
    'https://irecognize-profile-pics.s3.us-east-2.amazonaws.com/CURRENT_USER.jpg');

PersonModel ALEXA_URREA = PersonModel('Alexa Urrea', TEMP_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SJFP5TFD-800745531fd0-512');

PersonModel TREY_REYNOLDS = PersonModel(
    "Trey Reynolds",
    "Hit me up if you wanna shoot some hoops!",
    "https://tunisaid.org/wp-content/uploads/2019/03/avataaars-2.png");
PersonModel TRACE_HALE =
    PersonModel('Trace Hale', TEMP_TAGLINE, S3_BASE_URL + 'TRACE_HALE.jpg');

// Start of lists of hard-coded people

List<PersonModel> PEOPLE_NEAR_ME = [ALEXA_URREA, TRACE_HALE, TREY_REYNOLDS];

List<PersonModel> FRIENDS_TALKED_TO_RECENTLY = [];

List<PersonModel> MY_FRIENDS = [
  PersonModel('Billy Joe', TEMP_TAGLINE, TEST_USER_IMG),
  PersonModel('Jake Snake', TEMP_TAGLINE, TEST_USER_IMG),
  PersonModel('Lebron James', TEMP_TAGLINE, TEST_USER_IMG),
  PersonModel('Russell Westbrook', TEMP_TAGLINE, TEST_USER_IMG),
  PersonModel('Donovan Mitchell', TEMP_TAGLINE, TEST_USER_IMG),
  PersonModel('Blake Hughes', TEMP_TAGLINE, TEST_USER_IMG),
  TREY_REYNOLDS,
  TRACE_HALE
];
