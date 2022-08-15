import 'package:flutter/material.dart';

class ComponentImage extends StatelessWidget {

  final String name;
  final double height;
  final double width;
  final bool? isCover;

  const ComponentImage({
    Key? key,
    required this.name,
    required this.height,
    required this.width,
    this.isCover = false,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      height: height,
      width: width,
      fit: isCover != null ? BoxFit.cover : BoxFit.none,
    );
  }

}