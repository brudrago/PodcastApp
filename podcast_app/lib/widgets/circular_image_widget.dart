import 'package:flutter/material.dart';

class CircularImageWidget extends StatelessWidget {
  final double width;
  final double height;

  const CircularImageWidget({
    super.key,
    required this.imageProvider,
    this.width = 300,
    this.height = 300,
  });

  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 5.0,
        ),
        shape: BoxShape.circle,
        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
      ),
    );
  }
}
