import 'package:flutter/cupertino.dart';
import 'package:mixnote/widgets/image_tools/bottom_wave_clipper.dart';
import 'package:mixnote/widgets/image_tools/right_wave_clipper.dart';

class WavyImage extends StatelessWidget {
  final Key? key;
  final Image child;
  WavyImage({this.key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: child,
    );
  }
}

class WavyImageHorizontal extends StatelessWidget {
  final Key? key;
  final Image child;
  WavyImageHorizontal({this.key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RightWaveClipper(),
      child: child,
    );
  }

}