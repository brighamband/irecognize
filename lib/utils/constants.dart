// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/models/about_model.dart';
import 'package:irecognize/models/places_model.dart';
import 'package:irecognize/models/chat_model.dart';

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

List<AboutModel> ABOUT_LIST = [
  AboutModel(0, 'Conversation Reminders',
      'Ask him how his 340 midterm went today.\nWish him luck for his job interview with Amazon.'),
  AboutModel(
      1, 'Events', 'Invited you to his party tomorrow at 7:00pm at his house!'),
  AboutModel(2, 'How You Met', 'Met in CS 235 2 years ago'),
  AboutModel(3, 'Birthday', 'July 23'),
  AboutModel(4, 'DO NOT TALK ABOUT', 'The color green'),
  AboutModel(5, "Marital Status", "Married"),
  AboutModel(6, "Social Media", "@instagramHandle\n@twitterHandle")
];

List<PlacesModel> PLACES_LIST = [
  PlacesModel("Wilk Ballroom",
      'https://www.google.com/maps/place/Ernest+L.+Wilkinson+Student+Center,+1+Campus+Dr,+Provo,+UT+84604/@40.2485515,-111.6494108,17z/data=!4m5!3m4!1s0x874d90b9ee679dc3:0x1937fe0d8a468f80!8m2!3d40.2485515!4d-111.6472221'),
  PlacesModel("Talmage Building",
      'https://www.google.com/maps/place/James+E.+Talmage+Math+Sciences%2FComputer+Bldg,+Provo,+UT+84604/@40.2494007,-111.6530764,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90ba5529a62b:0x12ffaaa86ee53588!8m2!3d40.2494007!4d-111.6508877'),
  PlacesModel("Penguin Brothers Ice Cream Shop",
      'https://www.google.com/maps/place/Penguin+Brothers+%7C+Dessert+Catering+and+Ice+Cream+Shop/@40.2510901,-111.658935,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90a37b46802d:0xe81c432303d47eba!8m2!3d40.2510899!4d-111.6567818'),
  PlacesModel("Kiwanis park",
      'https://www.google.com/maps/place/Kiwanis+Park/@40.246933,-111.6419627,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90c853a996c7:0xd0555ec0fe7f4aca!8m2!3d40.246933!4d-111.639774'),
  PlacesModel("Afuego Fridays",
      'https://www.google.com/maps/place/Afuego+Fridays/@40.2565867,-111.6738212,17z/data=!3m1!4b1!4m5!3m4!1s0x874d975756dd0785:0x7a126a98d757156c!8m2!3d40.2565867!4d-111.6716325')
];

List<ChatModel> CHATS_LIST = [
  ChatModel("5 min", 'Today 3:45 PM', "WSC BALL"),
  ChatModel("2 hours", "Yesterday 11:03 AM", "TMCB"),
  ChatModel("32 min", "Apr 6 12:10 PM", "WSC Terrace"),
  ChatModel("4 hours", "Apr 2 2:33 PM", "Kiwanis Park"),
  ChatModel("2 hours", "Mar 30 11:01 AM", "TMCB"),
];
