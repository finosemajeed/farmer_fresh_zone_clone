import 'package:farmers_fresh_zone_clone/core/color_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: CupertinoTextField(
        placeholder: 'Search for Vegetables,Fruits ..',
        prefix: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: const Icon(
            Icons.search,
            color: CupertinoColors.placeholderText,
          ),
        ),
      ),
    );
    // TextFormField(
    //   decoration: InputDecoration(
    //     prefixIcon: const Icon(
    //       Icons.search,
    //       color: kGrey,
    //     ),
    //     hintText: 'Search for Vegetables,Fruits ..',
    //     filled: true,
    //     fillColor: kWhite,
    //     border: InputBorder.none,
    //     enabledBorder: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(8),
    //       borderSide: BorderSide.none,
    //     ),
    //     focusedBorder: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(8),
    //       borderSide: BorderSide.none,
    //     ),
    //   ),
    // );
  }
}
