// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/models/about_model.dart';
import 'package:irecognize/models/places_model.dart';
import 'package:irecognize/models/chat_model.dart';

import '../components/received_msg_bubble.dart';
import '../components/sent_msg_bubble.dart';

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
const String BYU_CS_STUDENT_TAGLINE =
    "I'm a BYU student taking CS 356.  I love that CS 356 is my only class!";
const String SOJO_BRO_TAGLINE =
    "I'm from South Jordan and I love to ball up with the buddies!";

// Start of hard-coded people

PersonModel CURRENT_USER = PersonModel(
    'Brigham Andersen',
    "I'm a 23-yr old studying CS and Business @ BYU.  Excited to meet ya!",
    'https://irecognize-profile-pics.s3.us-east-2.amazonaws.com/CURRENT_USER.jpg');

PersonModel ALEXA_URREA = PersonModel('Alexa Urrea', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SJFP5TFD-800745531fd0-512');
PersonModel SAM_BENNION = PersonModel('Sam Bennion', BYU_CS_STUDENT_TAGLINE,
    'https://avatars.githubusercontent.com/u/13336157?v=4');
PersonModel TRACE_HALE = PersonModel(
    'Trace Hale', BYU_CS_STUDENT_TAGLINE, S3_BASE_URL + 'TRACE_HALE.jpg');
PersonModel ADAM_LENNING = PersonModel(
    'Adam Lenning',
    "TA for CS 356.  I'm a huge fan of UI/UX and Stats!",
    S3_BASE_URL + 'ADAM_LENNING.jpg');
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
PersonModel TUSTIN_NEILSON = PersonModel(
    'Tustin Neilson',
    BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SFH46QLD-583f467533cd-512');
PersonModel CARTER_MADSEN = PersonModel('Carter Madsen', BYU_CS_STUDENT_TAGLINE,
    'https://ca.slack-edge.com/T02S59PFSPM-U02SLGBMSQ4-aa49c5405700-512');
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

PersonModel CODY_KNECHT = PersonModel(
    'Cody Knecht',
    "I'm a party animal always looking for a good time!",
    'https://scontent-lax3-2.xx.fbcdn.net/v/t1.6435-9/74163393_105469217541030_6680815542959341568_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Ffno8TKMl9UAX8sZLMf&_nc_ht=scontent-lax3-2.xx&oh=00_AT-7-ZEn40O1likX3iQrnCQL3dfjx0FIB6DrD8SQRwBOeg&oe=6275BF1F');
PersonModel ISAAC_PETTIT = PersonModel('Isaac Pettit', SOJO_BRO_TAGLINE,
    'https://scontent-lax3-1.xx.fbcdn.net/v/t1.6435-9/119837228_611934999471646_2931247024621831643_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=FbSRnE4ohNoAX8G6lQn&_nc_ht=scontent-lax3-1.xx&oh=00_AT_r99Ra3k9l-7WAYN5-CfHX0enW5xtrXh6Hj5WT_CTswg&oe=62764994');
PersonModel CADEN_KIRBY = PersonModel('Caden Kirby', SOJO_BRO_TAGLINE,
    'https://scontent-lax3-2.xx.fbcdn.net/v/t1.6435-9/127759301_2853316474941664_706178127536423216_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=530iTwDFsKIAX858e05&_nc_ht=scontent-lax3-2.xx&oh=00_AT-HPnlr56IuEy2kH6km8FgKO1Jn-Mt2nJgQ7eWRKvPAYA&oe=62786AB0');
PersonModel JEFFERSON_HARBAUGH = PersonModel(
    'Jefferson Harbaugh',
    SOJO_BRO_TAGLINE,
    'https://scontent-lax3-1.xx.fbcdn.net/v/t39.30808-6/235749020_581089276597136_3792108346606392814_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=3IW7XgEpsg8AX8wKU7J&_nc_ht=scontent-lax3-1.xx&oh=00_AT9p97Howy9bTSHzD-rahiks2mUzPjW7ZDQGcwM75uwIWQ&oe=62568574');
PersonModel MARCUS_YOUNG = PersonModel('Marcus Young', SOJO_BRO_TAGLINE,
    'https://scontent-lax3-2.xx.fbcdn.net/v/t1.6435-9/123586938_10207457148862615_3895091083065767711_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=174925&_nc_ohc=rUV3SIJ9JE4AX9ryLuE&_nc_ht=scontent-lax3-2.xx&oh=00_AT9X1uPsG_iYjMJRITWNQa0G0em_l-eghtyMAc0g2sLOag&oe=627647A9');

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
  TUSTIN_NEILSON,
  CARTER_MADSEN,
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
  TRACE_HALE,
  CODY_KNECHT
];

List<PersonModel> BYU_FRIENDS_NETWORK = [
  // Network of friends
  // Use getMyFriends() in helpers to get list from perspective of a certain person
  ALEXA_URREA,
  SAM_BENNION,
  HARRISON_BURGESS,
  MIKE_JONES,
  ETHAN_WALCH,
  DYLAN_PACKHAM,
  TRACE_HALE
];

List<PersonModel> FRIENDS_FROM_HOME_NETWORK = [
  CODY_KNECHT,
  ISAAC_PETTIT,
  CADEN_KIRBY,
  JEFFERSON_HARBAUGH,
  MARCUS_YOUNG
];

List<PersonModel> ALL_PEOPLE = [
  // List of all people
  ALEXA_URREA,
  SAM_BENNION,
  TRACE_HALE,
  ADAM_LENNING,
  MIKE_JONES,
  ELIJAH_QUARTEY,
  MADDIE_PETTY,
  HARRISON_BURGESS,
  TUSTIN_NEILSON,
  CARTER_MADSEN,
  RAND_ALRABADI,
  JACOB_SEARLE,
  DANIEL_TAYLOR,
  ETHAN_WALCH,
  NOOR_ASSI,
  DYLAN_PACKHAM,
  JAX_MATTHEWS,
  CODY_KNECHT,
  ISAAC_PETTIT,
  CADEN_KIRBY,
  JEFFERSON_HARBAUGH,
  MARCUS_YOUNG
];

List<AboutModel> ABOUT_LIST = [
  AboutModel('Conversation Reminders',
      'Ask them how their 312 project presentation went today.\nWish them luck for their job interview at Amazon.'),
  AboutModel('Events', '340 presentation with them today!!'),
  AboutModel('How You Met', 'Met in CS 235 2 years ago'),
  AboutModel('Birthday', 'November 7'),
  AboutModel('DO NOT TALK ABOUT', 'The color green'),
  AboutModel("Marital Status", "Married"),
  AboutModel("Social Media", "@instagramHandle\n@twitterHandle")
];

List<PlacesModel> PLACES_LIST = [
  PlacesModel(
      "Wilk Ballroom",
      'https://www.google.com/maps/place/Ernest+L.+Wilkinson+Student+Center,+1+Campus+Dr,+Provo,+UT+84604/@40.2485515,-111.6494108,17z/data=!4m5!3m4!1s0x874d90b9ee679dc3:0x1937fe0d8a468f80!8m2!3d40.2485515!4d-111.6472221',
      "Today"),
  PlacesModel(
      "Talmage Building",
      'https://www.google.com/maps/place/James+E.+Talmage+Math+Sciences%2FComputer+Bldg,+Provo,+UT+84604/@40.2494007,-111.6530764,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90ba5529a62b:0x12ffaaa86ee53588!8m2!3d40.2494007!4d-111.6508877',
      "Yesterday"),
  PlacesModel(
      "Penguin Brothers Ice Cream Shop",
      'https://www.google.com/maps/place/Penguin+Brothers+%7C+Dessert+Catering+and+Ice+Cream+Shop/@40.2510901,-111.658935,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90a37b46802d:0xe81c432303d47eba!8m2!3d40.2510899!4d-111.6567818',
      "Apr 3"),
  PlacesModel(
      "Kiwanis Park",
      'https://www.google.com/maps/place/Kiwanis+Park/@40.246933,-111.6419627,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90c853a996c7:0xd0555ec0fe7f4aca!8m2!3d40.246933!4d-111.639774',
      "Apr 2"),
  PlacesModel(
      "Afuego Fridays",
      'https://www.google.com/maps/place/Afuego+Fridays/@40.2565867,-111.6738212,17z/data=!3m1!4b1!4m5!3m4!1s0x874d975756dd0785:0x7a126a98d757156c!8m2!3d40.2565867!4d-111.6716325',
      "Mar 4")
];

List<ChatModel> CHATS_LIST = [
  ChatModel("5 min", 'Today @ 3:45 PM', "WSC BALL", BASIC_CONVO),
  ChatModel("2 hours", "Yesterday @ 11:03 AM", "TMCB", BASIC_CONVO),
  ChatModel("32 min", "Apr 6 @ 12:10 PM", "WSC Terrace", BASIC_CONVO),
  ChatModel("4 hours", "Apr 2 @ 2:33 PM", "Kiwanis Park", BASIC_CONVO),
  ChatModel("2 hours", "Mar 30 @ 11:01 AM", "TMCB", BASIC_CONVO),
];

List<StatelessWidget> BASIC_CONVO = const [
  SentMsgBubble(message: "Hey! What's up?"),
  ReceivedMsgBubble(
      message:
          "Hey, nothing much, just came to eat my  lunch. Did you finish that 340 assignment yet?"),
  SentMsgBubble(message: "Not yet... working on it lol"),
  ReceivedMsgBubble(
      message:
          "Yeah that's how it goes. I'm working on a 312 project right now. My presentation is coming up."),
  SentMsgBubble(message: "Oh no way!? What algorithm is your group doing?"),
  ReceivedMsgBubble(message: "We're doing simulated annealing."),
  SentMsgBubble(message: "Oh that's sweet! Well good luck on that."),
  ReceivedMsgBubble(message: "Thanks man. See ya."),
  SentMsgBubble(message: "See ya!"),
];

List<AboutModel> SAM_REFRESH_ABOUT = [
  AboutModel(
      'Conversation Reminders', 'Check how his second Amazon interview went!'),
  AboutModel('Events',
      '356 presentation with them today!!\nInvited you to their going away party Friday, April 22nd at 7:00pm at their house!'),
  AboutModel('Previous Conversation Highlights',
      'Husband attending UT Health in San Antonio, TX in July.'),
  AboutModel('How You Met', 'Met in CS 235 2 years ago'),
  AboutModel('DO NOT TALK ABOUT', 'The color green'),
  AboutModel('Birthday', 'November 7'),
  AboutModel("Marital Status", "Married"),
  AboutModel("Social Media", "@instagramHandle\n@twitterHandle")
];

List<PlacesModel> REFRESH_PLACES = [
  PlacesModel(
      "MARB 130",
      "google.com/maps/place/Thomas+L.+Martin+Building,+Campus+Dr,+Provo,+UT+84604/@40.2468374,-111.6513943,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90b0a4e99c2f:0x38103a569ae01515!8m2!3d40.2468374!4d-111.6492056",
      "Today"),
  PlacesModel(
      "Wilk Ballroom",
      'https://www.google.com/maps/place/Ernest+L.+Wilkinson+Student+Center,+1+Campus+Dr,+Provo,+UT+84604/@40.2485515,-111.6494108,17z/data=!4m5!3m4!1s0x874d90b9ee679dc3:0x1937fe0d8a468f80!8m2!3d40.2485515!4d-111.6472221',
      "Today"),
  PlacesModel(
      "Talmage Building",
      'https://www.google.com/maps/place/James+E.+Talmage+Math+Sciences%2FComputer+Bldg,+Provo,+UT+84604/@40.2494007,-111.6530764,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90ba5529a62b:0x12ffaaa86ee53588!8m2!3d40.2494007!4d-111.6508877',
      "Yesterday"),
  PlacesModel(
      "Penguin Brothers Ice Cream Shop",
      'https://www.google.com/maps/place/Penguin+Brothers+%7C+Dessert+Catering+and+Ice+Cream+Shop/@40.2510901,-111.658935,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90a37b46802d:0xe81c432303d47eba!8m2!3d40.2510899!4d-111.6567818',
      "Apr 3"),
  PlacesModel(
      "Kiwanis Park",
      'https://www.google.com/maps/place/Kiwanis+Park/@40.246933,-111.6419627,17z/data=!3m1!4b1!4m5!3m4!1s0x874d90c853a996c7:0xd0555ec0fe7f4aca!8m2!3d40.246933!4d-111.639774',
      "Apr 2"),
  PlacesModel(
      "Afuego Fridays",
      'https://www.google.com/maps/place/Afuego+Fridays/@40.2565867,-111.6738212,17z/data=!3m1!4b1!4m5!3m4!1s0x874d975756dd0785:0x7a126a98d757156c!8m2!3d40.2565867!4d-111.6716325',
      "Mar 4")
];

List<ChatModel> REFRESH_CHATS = [
  ChatModel("1 min", '1 min ago', "MARB 130", REFRESH_CONVO),
  ChatModel("5 min", 'Today 3:45 PM', "WSC BALL", BASIC_CONVO),
  ChatModel("2 hours", "Yesterday 11:03 AM", "TMCB", BASIC_CONVO),
  ChatModel("32 min", "Apr 6 12:10 PM", "WSC Terrace", BASIC_CONVO),
  ChatModel("4 hours", "Apr 2 2:33 PM", "Kiwanis Park", BASIC_CONVO),
  ChatModel("2 hours", "Mar 30 11:01 AM", "TMCB", BASIC_CONVO),
];

// B: “Hey Sam!”
// S: “Hey Brigham!  It was fun running into you this weekend!”
// B: “Yeah skating was really fun!  Also we talked about your 312 group project – how’d that presentation go the other day?”
// S: “Oh you remember that?  Super good man, thanks for asking!”
// B: “What was your project algorithm again?  Simulated annealing, right?”
// S: “Okay your memory is insane!  Yes!  Funny you bring that up, I talked about simulated annealing at my interview with Amazon and they’ve called me back for another!”
// B: “Sweet!  I’m excited to hear how that goes!”

List<StatelessWidget> REFRESH_CONVO = const [
  SentMsgBubble(message: "“Hey Sam!”"),
  ReceivedMsgBubble(
      message: "Hey Brigham!  It was fun running into you this weekend!"),
  SentMsgBubble(
      message:
          "Yeah skating was really fun!  Also we talked about your 312 group project how did that presentation go the other day?"),
  ReceivedMsgBubble(
      message:
          "What was your project algorithm again? Simulated annealing, right?"),
  SentMsgBubble(
      message:
          "Okay your memory is insane!  Yes!  Funny you bring that up, I talked about simulated annealing at my interview with Amazon and they called me back for another!"),
  ReceivedMsgBubble(message: "Sweet! Im excited to hear how that goes!")
];
