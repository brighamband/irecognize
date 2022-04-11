import 'package:flutter/material.dart';
import 'package:irecognize/models/person_model.dart';
import 'package:irecognize/pages/person_page.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/helpers.dart';
import 'package:irecognize/utils/theme.dart';
import 'dart:async';
import 'package:sensors_plus/sensors_plus.dart';

import '../components/bars/navbar.dart';
import '../components/cards/pic_name_card.dart';

// class GyroPage extends StatefulWidget {
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

//   @override
//   State<StatefulWidget> createState() {

//   }
// }

class GyroPage extends StatefulWidget {
  const GyroPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyGyroPageState createState() => _MyGyroPageState();
}

class _MyGyroPageState extends State<GyroPage> {
  static const int _snakeRows = 20;
  static const int _snakeColumns = 20;
  static const double _snakeCellSize = 10.0;

  List<double>? _accelerometerValues;
  List<double>? _userAccelerometerValues;
  List<double>? _gyroscopeValues;
  List<double>? _magnetometerValues;
  final _streamSubscriptions = <StreamSubscription<dynamic>>[];

  @override
  Widget build(BuildContext context) {
    final accelerometer =
        _accelerometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
    final gyroscope =
        _gyroscopeValues?.map((double v) => v.toStringAsFixed(1)).toList();
    final userAccelerometer = _userAccelerometerValues
        ?.map((double v) => v.toStringAsFixed(1))
        .toList();
    final magnetometer =
        _magnetometerValues?.map((double v) => v.toStringAsFixed(1)).toList();

    return Scaffold(
      appBar: const Navbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.black38),
              ),
              child: SizedBox(
                  height: _snakeRows * _snakeCellSize,
                  width: _snakeColumns * _snakeCellSize
                  // child: Snake(
                  //   rows: _snakeRows,
                  //   columns: _snakeColumns,
                  //   cellSize: _snakeCellSize,
                  // ),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Accelerometer: $accelerometer'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('UserAccelerometer: $userAccelerometer'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Gyroscope: $gyroscope'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Magnetometer: $magnetometer'),
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
    _streamSubscriptions.add(
      accelerometerEvents.listen(
        (AccelerometerEvent event) {
          setState(() {
            _accelerometerValues = <double>[event.x, event.y, event.z];
          });
        },
      ),
    );
    _streamSubscriptions.add(
      gyroscopeEvents.listen(
        (GyroscopeEvent event) {
          setState(() {
            _gyroscopeValues = <double>[event.x, event.y, event.z];
          });
        },
      ),
    );
    _streamSubscriptions.add(
      userAccelerometerEvents.listen(
        (UserAccelerometerEvent event) {
          setState(() {
            _userAccelerometerValues = <double>[event.x, event.y, event.z];
          });
        },
      ),
    );
    _streamSubscriptions.add(
      magnetometerEvents.listen(
        (MagnetometerEvent event) {
          setState(() {
            _magnetometerValues = <double>[event.x, event.y, event.z];
          });
        },
      ),
    );
  }
}
