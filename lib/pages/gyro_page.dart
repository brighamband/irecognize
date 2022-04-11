import 'package:flutter/material.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/pages/person_page.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/helpers.dart';
import 'package:irecognize/utils/theme.dart';
import 'dart:async';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:irecognize/components/profile_pic.dart';
import '../components/bars/navbar.dart';
import '../components/cards/pic_name_card.dart';
import 'package:flutter/services.dart';

// class GyroPage extends StatelessWidget {
//   GyroPage({Key? key}) : super(key: key);

//   final PersonModel testPersonFound = SAM_BENNION;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const Navbar(),
//       body: Center(
//           child: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.all(70),
//             child: Image(
//               image: AssetImage('assets/compass_icon.png'),
//               height: 100,
//               width: 100,
//             ),
//           ),
//           Padding(
//               padding: const EdgeInsets.all(20),
//               child: PicNameCard(person: testPersonFound)

//               // Row(
//               //   children: [
//               //     const Padding(padding: EdgeInsets.all(40)),
//               //     const ClipRRect(
//               //         borderRadius: BorderRadius.all(Radius.circular(35)),
//               //         child: Image(
//               //           image: AssetImage('assets/brad-pic.jpg'),
//               //           height: 50,
//               //           width: 50,
//               //         )),
//               //     const Padding(padding: EdgeInsets.all(20)),
//               //     Text(personFound)
//               //   ],
//               // ),
//               // )
//               ),
//           const Padding(padding: EdgeInsets.all(30)),
//           ElevatedButton(
//               onPressed: () {
//                 goToPage(context, PersonPage(person: testPersonFound));
//               },
//               child: const Text("View Bio"),
//               style: ElevatedButton.styleFrom(primary: colorScheme.tertiary))
//         ],
//       )),
//     );
//   }
// }

class GyroPage extends StatefulWidget {
  const GyroPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyGyroPageState createState() => _MyGyroPageState();
}

class _MyGyroPageState extends State<GyroPage> {
  // List<double>? _accelerometerValues;
  // List<double>? _userAccelerometerValues;
  // List<double>? _gyroscopeValues;
  double? _magnetometerX;
  double? _magnetometerY;
  double? _magnetometerZ;

  List<double>? _magnetometerValues;
  final PersonModel testPersonFound = SAM_BENNION;
  final _streamSubscriptions = <StreamSubscription<dynamic>>[];

  @override
  Widget build(BuildContext context) {
    // final accelerometer =
    //     _accelerometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
    // final gyroscope =
    //     _gyroscopeValues?.map((double v) => v.toStringAsFixed(1)).toList();
    // final userAccelerometer = _userAccelerometerValues
    //     ?.map((double v) => v.toStringAsFixed(1))
    //     .toList();
    final magnetometer =
        _magnetometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
    const personDirection = 0.0;
    bool isPointed = (_magnetometerX != null &&
        _magnetometerX! < personDirection + 10.0 &&
        _magnetometerX! > personDirection - 10.0 &&
        _magnetometerY! > 0);
    if (isPointed) {
      HapticFeedback.mediumImpact();
    }
    return Scaffold(
      appBar: const Navbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Center(
            // child: DecoratedBox(
            //   decoration: BoxDecoration(
            //     border: Border.all(width: 1.0, color: Colors.black38),
            //   ),
            // height: _snakeRows * _snakeCellSize,
            // width: _snakeColumns * _snakeCellSize,
            // child: (magnetometer != null && magnetometer[0] < 5 && magnetometer[0] > -5) ? const Text("Hi") : Text("yo"))
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Find by pointing",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: colorScheme.onBackground))),
                if (isPointed)
                  Padding(
                      padding: const EdgeInsets.only(bottom: 250, top: 60),
                      child: GridTile(
                          child: GestureDetector(
                              child: (Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GridTile(
                                      child: ProfilePic(
                                    imageUrl: testPersonFound.imageUrl,
                                  )),
                                ),
                                shape: CircleBorder(
                                    side:
                                        BorderSide(color: colorScheme.outline)),
                                elevation: 0,
                              )),
                              onTap: () {
                                goToPage(context,
                                    PersonPage(person: testPersonFound));
                              })))
                else
                  Text('Move phone around to find someone.',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: colorScheme.onBackground)),
                // Use this if testing magnetometer
                //Text('Move phone around to find someone. $_magnetometerX'),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       Text('Accelerometer: $accelerometer'),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       Text('UserAccelerometer: $userAccelerometer'),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       Text('Gyroscope: $gyroscope'),
          //     ],
          //   ),
          // ),
          if (isPointed)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        goToPage(context, PersonPage(person: testPersonFound));
                      },
                      child: const Text("View Bio"),
                      style: ElevatedButton.styleFrom(
                          primary: colorScheme.tertiary)),
                  // Text('Magnetometer: $magnetometer'),
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    for (final subscription in _streamSubscriptions) {
      subscription.cancel();
    }
  }

  @override
  void initState() {
    super.initState();
    // _streamSubscriptions.add(
    //   accelerometerEvents.listen(
    //     (AccelerometerEvent event) {
    //       setState(() {
    //         _accelerometerValues = <double>[event.x, event.y, event.z];
    //       });
    //     },
    //   ),
    // );
    // _streamSubscriptions.add(
    //   gyroscopeEvents.listen(
    //     (GyroscopeEvent event) {
    //       setState(() {
    //         _gyroscopeValues = <double>[event.x, event.y, event.z];
    //       });
    //     },
    //   ),
    // );
    // _streamSubscriptions.add(
    //   userAccelerometerEvents.listen(
    //     (UserAccelerometerEvent event) {
    //       setState(() {
    //         _userAccelerometerValues = <double>[event.x, event.y, event.z];
    //       });
    //     },
    //   ),
    // );
    _streamSubscriptions.add(
      magnetometerEvents.listen(
        (MagnetometerEvent event) {
          setState(() {
            _magnetometerValues = <double>[event.x, event.y, event.z];
            _magnetometerX = event.x;
            _magnetometerY = event.y;
            _magnetometerZ = event.z;
          });
        },
      ),
    );
  }
}
