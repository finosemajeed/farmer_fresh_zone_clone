import 'package:farmers_fresh_zone_clone/core/color_config.dart';
import 'package:flutter/material.dart';

class CustomCatogoriesChip extends StatelessWidget {
  const CustomCatogoriesChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Chip(
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              label: Text(
                'Vegetables',
                style: TextStyle(
                  color: kGreenText,
                  fontSize: 15,
                ),
              ),
              backgroundColor: kOffGreen,
              side: BorderSide(color: kGreenS100, width: 2),
            ),
          );
        },
      ),
    );
  }
}
