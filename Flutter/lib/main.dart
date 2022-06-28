import 'package:flutter/material.dart';
import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'RGB LED Controller';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Scaffold(
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String currentCode = 'Old Sample Text...!!!';

  Future<void> transmitPattern(String hexKey) async {
    String? pattern = codes[hexKey];
    if (pattern == null) return;
    await IrSensorPlugin.transmitString(pattern: pattern);
  }

  void updateText(text) {
    setState(() {
      currentCode = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  image: DecorationImage(
                    image: AssetImage("assets/images/remote.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: GridView.count(
                  padding: const EdgeInsets.only(left: 49, right: 45),
                  primary: false,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 8.5,
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  children: <Widget>[
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_BRIGHTER');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_DARKER');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_OFF');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_ON');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_RED');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_GREEN');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_BLUE');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_WHITE');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_REDDISH');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_GREENISH');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_DEEPBLUE');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_FLASH');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_ORANGE');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_TURQUOISE');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_PURPLE');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_STROBE');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_YELLOWISH');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_CYAN');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_MAGENTA');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_FADE');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_YELLOW');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_AQUA');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        transmitPattern('IR24_PINK');
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        updateText('x');
                        transmitPattern('IR24_SMOOTH');
                      },
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Text(
                currentCode,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

final Map<String, String> codes = {
  'IR24_BRIGHTER':
      '0000 006D 0022 0000 015B 00AE 0014 0018 0014 0016 0016 0016 0014 0018 0014 0016 0014 0018 0016 0014 0016 0016 0016 0041 0014 0043 0014 0041 0016 003F 0016 0016 0016 0041 0014 0041 0016 0041 0014 0018 0014 0016 0016 0016 0014 0018 0014 0018 0014 0016 0016 0016 0014 0016 0014 0043 0014 0043 0014 0041 0016 0041 0014 0043 0014 0041 0016 0041 0014 0043 0014 06C3',
  'IR24_DARKER':
      '0000 006D 0022 0000 015B 00AE 0016 0016 0014 0016 0014 0018 0014 0018 0014 0018 0012 0018 0014 0018 0014 0016 0014 0041 0016 0041 0014 0043 0014 0043 0014 0016 0014 0043 0014 0041 0016 0041 0016 0041 0014 0018 0014 0016 0014 0018 0012 0018 0016 0016 0014 001A 0012 0016 0014 0018 0014 0043 0014 0041 0016 003F 0016 0041 0016 0041 0016 0041 0014 0043 0014 06C3',
  'IR24_OFF':
      '0000 006D 0022 0000 015B 00AC 0018 0014 0016 0016 0016 0014 0018 0014 0016 0016 0016 0014 0016 0016 0016 0014 0018 003F 0016 0041 0016 003F 0018 003F 0016 0016 0016 003F 0018 003F 0016 0041 0016 0014 0016 0041 0016 0016 0016 0014 0016 0016 0016 0014 0018 0014 0016 0016 0016 003F 0016 0016 0016 0041 0016 003F 0016 0041 0016 003F 0018 003F 0016 0041 0016 06C3',
  'IR24_ON':
      '0000 006D 0022 0000 015B 00AC 0018 0014 0016 0016 0016 0014 0016 0016 0016 0016 0016 0014 0016 0016 0016 0014 0016 0041 0016 0041 0016 003F 0016 0041 0016 0014 0018 003F 0016 0041 0016 003F 0018 003F 0016 0041 0016 0014 0018 0014 0016 0016 0016 0014 0016 0016 0016 0014 0018 0014 0016 0016 0016 003F 0016 0041 0016 003F 0018 003F 0016 0041 0016 003F 0018 06C3',
  'IR24_RED':
      '0000 006D 0024 0000 015B 00AC 0016 0018 0012 0018 0014 0018 0008 0003 0007 001A 0014 0016 0014 0018 0014 0016 0014 0018 0014 0043 0012 0043 0014 0043 0005 0009 0008 003F 0014 0018 0014 0043 0014 0041 0014 0043 0014 0018 0014 0016 0016 003F 0016 0016 0016 0016 0014 0018 0014 0016 0016 0018 0012 0041 0016 0041 0016 0016 0014 0041 0016 0041 0014 0043 0014 0041 0014 0043 0014 06C3',
  'IR24_GREEN':
      '0000 006D 0023 0000 015B 00B0 0012 0018 0014 0016 0016 0016 0014 0016 0014 0018 0014 0018 0014 0016 0014 0016 0016 0041 0016 0041 0016 003F 0016 0043 0014 0016 0014 0043 0014 0041 0014 0043 0016 0041 0003 0005 000C 0016 0014 0043 0014 0018 0014 0016 0014 0018 0014 0016 0014 0018 0016 0016 0014 0041 0016 0016 0014 0043 0012 0043 0016 0041 0014 0041 0016 0041 0016 06C3',
  'IR24_BLUE':
      '0000 006D 0023 0000 015D 00AC 0016 0016 0014 0018 0014 0016 0014 0018 0014 0016 0014 0018 0014 0016 0016 0016 0016 0041 0007 0005 0007 0046 0010 0043 0016 003F 0016 0018 0012 0043 0014 0043 0014 0041 0016 0014 0016 0043 0014 0041 0016 0016 0014 0016 0014 0018 0014 0016 0016 0016 0016 0041 0014 0018 0014 0016 0014 0041 0016 0041 0016 0041 0014 0043 0014 0041 0014 06C3',
  'IR24_REDDISH':
      '0000 006D 0022 0000 015B 00AC 0016 0016 0016 0016 0016 0014 0016 0016 0016 0016 0016 0014 0016 0016 0016 0014 0016 0041 0016 0041 0016 003F 0016 0041 0014 0018 0016 003F 0016 0041 0016 0041 0014 0016 0016 0016 0014 0016 0016 0041 0016 0016 0016 0014 0016 0016 0014 0016 0018 003F 0016 0041 0016 003F 0016 0016 0016 0041 0016 003F 0016 0041 0016 0041 0016 06C3',
  'IR24_ORANGE':
      '0000 006D 0022 0000 015D 00AC 0016 0014 0018 0014 0016 0014 0018 0014 0018 0014 0016 0014 0018 0014 0016 0016 0016 003F 0018 003F 0016 003F 0018 003F 0018 0014 0016 003F 0018 003F 0018 003F 0016 0014 0018 0014 0016 003F 0018 003F 0018 0014 0016 0014 0018 0014 0018 0014 0016 003F 0018 003F 0016 0016 0016 0014 0018 003F 0016 003F 0018 003F 0018 003F 0016 06C3',
  'IR24_YELLOWISH':
      '0000 006D 0022 0000 015D 00AA 0018 0014 0018 0014 0016 0014 0018 0014 0016 0016 0016 0016 0016 0014 0016 0014 0018 003F 0018 003F 0016 003F 0018 003F 0016 0016 0016 003F 0018 003F 0016 003F 0018 0014 0018 0014 0016 0014 0018 0014 0018 003F 0016 0016 0016 0014 0016 0016 0016 003F 0018 003F 0016 003F 0018 003F 0018 0014 0016 0041 0016 003F 0016 0041 0016 06C3',
  'IR24_YELLOW':
      '0000 006D 0022 0000 015D 00AC 0016 0014 0018 0014 0018 0014 0016 0014 0018 0014 0016 0014 0018 0014 0016 0016 0016 003F 0018 003F 0018 003F 0016 003F 0018 0014 0016 0041 0016 003F 0018 003F 0016 0014 0018 0016 0016 003F 0016 0014 001A 003D 0018 0014 0016 0014 0018 0014 0016 003F 0018 003F 0018 0014 0016 003F 0018 0014 0018 003F 0016 003F 0018 003F 0016 06C3',
  'IR24_GREENISH':
      '0000 006D 0022 0000 015B 00AE 0014 0018 0014 0016 0014 0018 0014 0016 0016 0016 0014 0016 0016 0016 0016 0014 0016 0041 0016 0041 0016 003F 0016 0041 0014 0018 0016 0041 0014 0041 0014 0043 0014 0043 0014 0016 0014 0018 0014 0041 0016 0016 0016 0016 0014 0016 0014 0018 0014 0018 0014 0041 0016 0041 0014 0018 0014 0041 0016 0041 0014 0041 0014 0043 0014 06C3',
  'IR24_TURQUOISE':
      '0000 006D 0022 0000 015B 00AC 0016 0016 0014 0018 0014 0016 0014 0018 0014 0018 0014 0016 0016 0016 0014 0018 0012 0044 0014 0041 0014 0041 0014 0043 0014 0018 0014 0041 0016 0041 0014 0043 0014 0041 0016 0016 0014 0041 0016 0041 0016 0016 0014 0016 0016 0016 0016 0016 0014 001A 0010 0043 0014 0018 0014 0016 0016 0041 0014 0041 0016 0043 0014 0041 0014 06C3',
  'IR24_CYAN':
      '0000 006D 0023 0000 015B 00AE 0016 0016 0016 0018 0012 0018 0014 0016 0014 001A 0012 0018 0014 0016 0016 0016 0014 0043 0014 0041 0014 0041 0016 0043 0014 0016 0008 0003 0007 0046 0014 0041 0014 0041 0014 0041 0016 0018 0014 0016 0014 0018 0014 0041 0016 0016 0014 0018 0014 0016 0014 0018 0014 0041 0016 0041 0014 0041 0016 0018 0014 0041 0016 0041 0014 0043 0014 06C3',
  'IR24_AQUA':
      '0000 006D 0022 0000 0159 00B0 0012 001A 0012 0018 0014 0016 0016 0016 0014 0018 0012 0018 0016 0016 0014 0016 0016 0041 0014 0043 0014 0041 0016 0041 0014 0018 0014 0043 0014 0041 0014 0043 0014 0041 0014 0018 0014 0041 0016 0016 0014 0043 0014 0018 0014 0016 0014 0018 0014 0018 0014 0041 0014 0016 0016 0041 0014 0018 0014 0041 0014 0044 0012 0043 0014 06C3',
  'IR24_DEEPBLUE':
      '0000 006D 0022 0000 015D 00AC 0016 0016 0016 0014 0016 0018 0014 0016 0016 0014 0016 0016 0016 0014 0016 0016 0016 0041 0014 0041 0016 0041 0016 0041 0016 0016 0014 0043 0014 0041 0014 0043 0014 0016 0014 0043 0016 0014 0016 0041 0014 0016 0016 0016 0016 0016 0014 0016 0016 0041 0014 0018 0014 0041 0016 0016 0014 0043 0014 0043 0014 0041 0014 0041 0016 06C3',
  'IR24_PURPLE':
      '0000 006D 0022 0000 015B 00AE 0014 0016 0016 0018 0014 0016 0014 0016 0016 0016 0014 0018 0014 0018 0014 0016 0014 0043 0014 0043 0014 0041 0014 0041 0016 0018 0014 0041 0014 0043 0016 003F 0016 0016 0014 0041 0016 0043 0014 0041 0014 0018 0014 0018 0014 0016 0014 001A 0014 0041 0014 0016 0014 0018 0016 0014 0016 0041 0014 0043 0014 0043 0014 0041 0016 06C3',
  'IR24_MAGENTA':
      '0000 006D 0022 0000 015B 00AE 0016 0016 0016 0016 0014 0016 0014 0016 0016 0016 0016 0016 0014 0018 0014 0016 0016 0041 0016 0041 0014 0041 0014 0043 0016 0016 0014 0041 0016 0041 0016 0041 0014 0016 0016 0041 0014 0016 0016 0016 0014 0043 0014 0016 0014 0018 0016 0016 0014 0041 0014 0016 0016 0043 0014 0041 0014 0018 0014 0041 0016 0041 0014 0043 0014 06C3',
  'IR24_PINK':
      '0000 006D 0022 0000 015B 00AE 0014 0018 0014 0016 0016 0016 0014 0016 0014 0018 0014 0018 0014 0016 0014 0016 0016 0041 0014 0043 0016 0041 0014 0041 0016 0016 0016 0041 0014 0041 0016 0041 0016 0014 0016 0041 0016 003F 0016 0016 0016 0041 0016 0014 0016 0016 0014 0016 0018 003F 0016 0016 0014 0016 0016 0041 0016 0016 0016 003F 0016 0041 0014 0043 0014 06C3',
  'IR24_WHITE':
      '0000 006D 0029 0000 015B 00AC 0008 0005 0007 001A 0014 0018 0012 0018 0014 0016 0008 0003 0007 001E 0010 0018 0014 0018 0014 0016 0014 0043 0014 0043 0007 0005 0007 0043 0014 0041 0008 0003 0008 0018 0014 0043 0014 0041 0016 003F 0008 0003 0007 0046 0014 0041 0014 0043 0014 0016 0014 0018 0014 0018 0005 0009 0007 0018 0012 0018 0007 0005 0007 001A 0014 0016 0016 0016 0014 0041 0016 0041 0014 0043 0014 0043 0014 0041 0014 06C3',
  'IR24_FLASH':
      '0000 006D 0027 0000 0159 00AE 0014 001A 0012 0018 0014 0016 0016 0016 0014 0018 0012 0018 0014 0018 0014 0016 0008 0005 0007 0046 0010 0043 0014 0043 0014 0043 0012 0018 0007 0005 0005 0046 0014 0041 0014 0041 0016 0041 0014 0043 0014 0016 0014 0043 0014 0016 0016 0018 0012 0018 0014 0016 0016 0016 0014 0018 0010 0048 0007 0005 0005 001A 0005 0052 0012 0041 0008 0005 0005 0044 0014 0043 0007 0005 0007 06C3',
  'IR24_STROBE':
      '0000 006D 0023 0000 0008 0003 014F 00AE 0014 0016 0016 0016 0016 0014 0016 0016 0016 0016 0014 0016 0014 0018 0016 0016 0014 0041 0016 0043 0012 0043 0014 0043 0012 0018 0014 0043 0012 0043 0016 0041 0014 0041 0014 0044 0012 0043 0014 0041 0014 0018 0016 0016 0014 0016 0016 0016 0014 0016 0016 0016 0016 0014 0014 0018 0016 0041 0014 0043 0014 0041 0016 003F 0016 06C3',
  'IR24_FADE':
      '0000 006D 0023 0000 015B 00AC 0016 0018 0012 0018 0018 0014 0014 0016 0016 0016 0014 0016 0014 0018 0016 0016 0014 0041 0016 0043 0012 0041 0016 0041 0016 0014 0016 0041 0016 0041 0016 003F 0016 0041 0014 0043 0014 0018 0014 0018 0012 0043 0014 0016 0016 0016 0014 0018 0014 0016 0008 0003 0007 001A 0014 0041 0016 0041 0014 0018 0014 0043 0014 0041 0016 0041 0014 06C3',
  'IR24_SMOOTH':
      '0000 006D 0022 0000 015D 00AC 0014 0016 0016 0016 0016 0016 0014 0018 0014 0016 0014 0018 0014 0016 0016 0016 0016 003F 0016 0041 0014 0043 0014 0041 0016 0016 0014 0041 0016 0041 0016 0041 0014 0041 0014 0043 0016 0041 0014 0016 0016 0041 0014 0016 0016 0018 0014 0016 0014 0018 0014 0018 0014 0014 0016 0043 0014 0016 0016 003F 0016 0043 0012 0043 0014 06C3',
};
