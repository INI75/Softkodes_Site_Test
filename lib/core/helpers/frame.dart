import 'package:flutter/material.dart';

class CenterdView extends StatelessWidget {
  const CenterdView({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 70, right: 70, bottom: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1200,
        ),
        child: child,
      ),
    );
  }
}
