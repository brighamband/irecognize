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

// Start of hard-coded data reused by people
const String S3_BASE_URL =
    'https://irecognize-profile-pics.s3.us-east-2.amazonaws.com/';
const String DEFAULT_IMG_URL = S3_BASE_URL + 'DEFAULT_IMG_URL.jpg';
const String TEST_USER_IMG = r'https://randomuser.me/api/portraits/men/32.jpg';
const String BYU_CS_STUDENT_TAGLINE =
    "I'm a BYU student taking CS 356.  I love that CS 356 is my only class!";

// Start of hard-coded people

PersonModel CURRENT_USER = PersonModel(
    'Brigham Andersen',
    "I'm a 23-yr old BYU Student studying Software Engineering and Business.  Excited to meet ya!",
    'https://irecognize-profile-pics.s3.us-east-2.amazonaws.com/CURRENT_USER.jpg');

PersonModel ALEXA_URREA = PersonModel('Alexa Urrea', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SJFP5TFD-800745531fd0-512');
PersonModel SAM_BENNION = PersonModel('Sam Bennion', BYU_CS_STUDENT_TAGLINE,
    'https://scontent-lax3-2.xx.fbcdn.net/v/t1.6435-9/85213555_1127885937542537_3247095546082492416_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=174925&_nc_ohc=E9Fb031rpUUAX-UbMVs&tn=RteFkLhyY_dF-ZAW&_nc_ht=scontent-lax3-2.xx&oh=00_AT8A5Gi9lQbeXBG9tH-H15WRoAiTIcuS2eddGe-RJdQIJQ&oe=6275645D');
PersonModel TRACE_HALE = PersonModel(
    'Trace Hale', BYU_CS_STUDENT_TAGLINE, S3_BASE_URL + 'TRACE_HALE.jpg');
PersonModel ADAM_LENNING = PersonModel(
    'Adam Lenning',
    "TA for CS 356.  I'm a huge fan of UI/UX and Stats!",
    'https://ca.slack-edge.com/T02S59PFSPM-U02T7VANHPS-d0ea373a42f9-512');
PersonModel MIKE_JONES = PersonModel(
    'Mike Jones',
    'Biggest advocate of HCI in the outdoors!  Skiing is life.',
    'https://ca.slack-edge.com/T02S59PFSPM-U02S7HAHUS0-539d1cf233c7-512');
PersonModel ELIJAH_QUARTEY = PersonModel(
    'Elijah Quartey',
    BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SJ89NK8B-a350a98b0c15-512');
PersonModel MADDIE_PETTY = PersonModel('Maddie Petty', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SLGE1B3N-41e414f01aed-512');
PersonModel HARRISON_BURGESS = PersonModel(
    'Harrison Burgess',
    BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SJD2Q7EE-82cf643a6be1-512');
PersonModel CARTER_MADSEN = PersonModel('Carter Madsen', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SLGBMSQ4-aa49c5405700-512');
PersonModel TUSTIN_NEILSON = PersonModel(
    'Tustin Neilson',
    BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SFH46QLD-583f467533cd-512');
PersonModel RAND_ALRABADI = PersonModel('Rand Alrabadi', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SF9N5X8D-fcf82c2118a3-512');
PersonModel JACOB_SEARLE = PersonModel('Jake Searle', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02T1R3R734-b593f39f41f6-512');
PersonModel DANIEL_TAYLOR = PersonModel('Daniel Taylor', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02TFBK8YHE-1d17e0841420-512');
PersonModel ETHAN_WALCH = PersonModel('Ethan Walch', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02TD7A2YSW-d20eccae1b3c-512');
PersonModel NOOR_ASSI = PersonModel('Noor Assi', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SD71NE8P-5891ebbc48f0-512');
PersonModel DYLAN_PACKHAM = PersonModel('Dylan Packham', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SJ7P16P4-95b3f9dc8a5c-512');
PersonModel JAX_MATTHEWS = PersonModel('Jax Matthews', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SBH3RXAA-c754706d9c9b-512');

// Start of lists of hard-coded people

List<PersonModel> PEOPLE_NEAR_ME = [
  // List of people near the current user
  ALEXA_URREA,
  SAM_BENNION,
  TRACE_HALE,
  ADAM_LENNING,
  MIKE_JONES,
  ELIJAH_QUARTEY,
  MADDIE_PETTY,
  HARRISON_BURGESS,
  CARTER_MADSEN,
  TUSTIN_NEILSON,
  RAND_ALRABADI,
  JACOB_SEARLE,
  DANIEL_TAYLOR,
  ETHAN_WALCH,
  NOOR_ASSI,
  DYLAN_PACKHAM,
  JAX_MATTHEWS
];

List<PersonModel> MY_TALKED_TO_RECENTLY = [
  // List of people who have recently talked to the current user
  ALEXA_URREA,
  SAM_BENNION,
  MIKE_JONES,
  TRACE_HALE
];

List<PersonModel> FRIENDS_NETWORK = [
  // Network of friends
  // Use getMyFriends() in helpers to get list from perspective of a certain person
  CURRENT_USER,
  ALEXA_URREA,
  SAM_BENNION,
  HARRISON_BURGESS,
  MIKE_JONES,
  ETHAN_WALCH,
  DYLAN_PACKHAM,
  TRACE_HALE
];

List<PersonModel> ALL_PEOPLE = [
  // List of all people including current user
  CURRENT_USER,
  ALEXA_URREA,
  SAM_BENNION,
  TRACE_HALE,
  ADAM_LENNING,
  MIKE_JONES,
  ELIJAH_QUARTEY,
  MADDIE_PETTY,
  HARRISON_BURGESS,
  CARTER_MADSEN,
  TUSTIN_NEILSON,
  RAND_ALRABADI,
  JACOB_SEARLE,
  DANIEL_TAYLOR,
  ETHAN_WALCH,
  NOOR_ASSI,
  DYLAN_PACKHAM,
  JAX_MATTHEWS
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
  PlacesModel("Kiwanis Park",
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
