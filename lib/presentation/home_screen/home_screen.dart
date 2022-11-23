import 'package:farmers_fresh_zone_clone/presentation/home_screen/appbar/custom_appbar.dart';
import 'package:farmers_fresh_zone_clone/presentation/home_screen/widgets/custom_categories.dart';
import 'package:farmers_fresh_zone_clone/presentation/home_screen/widgets/custom_catogories_chip.dart';
import 'package:farmers_fresh_zone_clone/presentation/home_screen/widgets/services_available.dart';
import 'package:farmers_fresh_zone_clone/presentation/home_screen/widgets/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const CustomCatogoriesChip(),
                OffersSlider(),
                const ServicesAvailable(),
                SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Shop By Category',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Custom_categories()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
              backgroundColor: Colors.lightGreen),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'CART'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'ACCOUNT')
        ],
      ),
    );
  }
}
