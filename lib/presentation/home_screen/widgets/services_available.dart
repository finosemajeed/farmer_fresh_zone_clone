
import 'package:farmers_fresh_zone_clone/core/color_config.dart';
import 'package:flutter/material.dart';

class ServicesAvailable extends StatelessWidget {
  const ServicesAvailable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10.0, horizontal: 25),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: kGrey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.alarm_add_outlined),
                  Text('30 MIN POLICY')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.track_changes),
                  Text('TRACEBILITY')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.local_activity),
                  Text('LOCAL SOURCING')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
