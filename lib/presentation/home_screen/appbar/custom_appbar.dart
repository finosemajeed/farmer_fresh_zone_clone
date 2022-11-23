import 'package:farmers_fresh_zone_clone/core/color_config.dart';
import 'package:farmers_fresh_zone_clone/presentation/home_screen/appbar/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: kGreen,
      title: const Text('FARMERS FRESH ZONE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          )),
      floating: true,
      pinned: true,
      actions: [
        TextButton(
          onPressed: () {},
          child: Wrap(
            children: const [
              Icon(
                Icons.pin_drop_outlined,
                color: kWhite,
              ),
              Text(
                'Kochi',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
      ],
      bottom: AppBar(
        elevation: 0,
        backgroundColor: kGreen,
        centerTitle: true,
        title: const CustomSearchField(),
      ),
    );
  }
}
