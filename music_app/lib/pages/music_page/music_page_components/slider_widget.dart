import 'package:music_app/pages/music_page/music_page_components/pages.dart';
class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int _value=6;
  @override
  Widget build(BuildContext context) {
    return Slider(
                  value: _value.toDouble(),
                  min: 1.0,
                  max: 20.0,
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                  onChanged: (double newValue) {
                    setState(() {
                      _value = newValue.round();
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()} dollars';
                  });
  }
}