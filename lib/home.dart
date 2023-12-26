import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test')),
      body: const Center(
          child: Column(
        children: [
          Text('체크박스'),
          Checks(),
          Text('라디오(버튼)'),
          Radios(),
          Text('슬라이더'),
          Sliders(),
          Text('스위치'),
          Switches()
        ],
      )),
    );
  }
}

class Checks extends StatefulWidget {
  const Checks({super.key});

  @override
  State<Checks> createState() => _ChecksState();
}

class _ChecksState extends State<Checks> {
  bool? isChecked = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            }),
        const Text('파이썬'),
        Checkbox(
            value: isChecked2,
            onChanged: (bool? value) {
              setState(() {
                isChecked2 = value;
              });
            }),
        const Text('자바스크립트'),
        Checkbox(
            value: isChecked3,
            onChanged: (bool? value) {
              setState(() {
                isChecked3 = value;
              });
            }),
        const Text('플러터'),
      ],
    );
  }
}

class Radios extends StatefulWidget {
  const Radios({super.key});

  @override
  State<Radios> createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: 'android', // 표시하는 것
            groupValue: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            }),
        const Text('android'),
        Radio(
            value: 'ios', // 표시하는 것
            groupValue: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            }),
        const Text('ios'),
      ],
    );
  }
}

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double value = 5.0; // 반드시 있는 값이다.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
            value: value,
            min: 0,
            max: 10,
            onChanged: (double val) {
              setState(() {
                value = val;
              });
            }),
        Text('slider value is $value'),
      ],
    );
  }
}

class Switches extends StatefulWidget {
  const Switches({super.key});

  @override
  State<Switches> createState() => _SwitchesState();
}

class _SwitchesState extends State<Switches> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: value,
            onChanged: (bool val) {
              setState(() {
                value = val;
              });
            }),
        Text('select value is $value'),
      ],
    );
  }
}
