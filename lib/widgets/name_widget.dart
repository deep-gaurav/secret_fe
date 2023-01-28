import 'package:flutter/material.dart';
import 'package:secret_fe/main.dart';
import 'package:secret_fe/utils/hero_text_shuttle.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'name',
      flightShuttleBuilder: flightShuttleBuilder,
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          child: Text(MyApp.of(context).user!.name),
        ),
      ),
    );
  }
}
