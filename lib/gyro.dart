import 'package:flutter/material.dart';

class GyroPage extends StatelessWidget {
  const GyroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iRecognize | Gyro Page'),
      ),
      body: Center(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(70),
            child: Image(
              image: AssetImage('assets/compass_icon.png'),
              height: 100,
              width: 100,
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                  color: Color.fromARGB(248, 202, 202, 206)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: const [
                    Padding(padding: EdgeInsets.all(40)),
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        child: Image(
                          image: AssetImage('assets/brad-pic.jpg'),
                          height: 50,
                          width: 50,
                        )),
                    Padding(padding: EdgeInsets.all(20)),
                    Text("Brad Pitt")
                  ],
                ),
              )),
          const Padding(padding: EdgeInsets.all(30)),
          ElevatedButton(onPressed: () {}, child: const Text("View Bio"))
        ],
      )),
    );
  }
}
