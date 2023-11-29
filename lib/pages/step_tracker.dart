import 'package:flutter/material.dart';

class StepTracker extends StatefulWidget {
  const StepTracker({super.key});

  @override
  State<StepTracker> createState() => _StepTrackerState();
}

class _StepTrackerState extends State<StepTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.bottomLeft,
            radius: 2, // Adjust the radius as needed
            colors: <Color>[
              Color(0xffffffff),
              Color(0xffffffff),
              Color(0xff2924BA),
              Color(0xff000000),
            ],
            stops: [0.1, 0.3, 0.5, 0.8], // Adjust the stops as needed
            tileMode: TileMode.mirror,
          ),
        ),
      ),
    );
  }
}
