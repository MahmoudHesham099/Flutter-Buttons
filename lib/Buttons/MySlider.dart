import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _sliderValue = 20.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(
            Icons.volume_mute,
            color: Colors.black,
            size: 30,
          ),
          Expanded(
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.purple,
                inactiveTrackColor: Colors.black,
                thumbColor: Colors.purple,
                overlayColor: Colors.black38,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
              ),
              child: Slider(
                value: _sliderValue,
                min: 0.0,
                max: 100.0,
                onChanged: (double val) {
                  setState(() {
                    _sliderValue = val;
                  });
                },
              ),
            ),
          ),
          Icon(
            Icons.volume_up,
            color: Colors.purple,
            size: 30,
          )
        ],
      ),
    );
  }
}
