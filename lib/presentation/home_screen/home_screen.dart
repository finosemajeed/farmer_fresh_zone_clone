import 'package:farmers_fresh_zone_clone/presentation/home_screen/appbar/custom_appbar.dart';
import 'package:farmers_fresh_zone_clone/presentation/home_screen/widgets/custom_catogories_chip.dart';
import 'package:farmers_fresh_zone_clone/presentation/home_screen/widgets/services_available.dart';
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
                const SizedBox(
                  height: 200,
                  width: double.infinity,
                ),
                const ServicesAvailable(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Shop By Category'),
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: 10,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 9,
                            color: Colors.green,
                          ),
                          Center(
                            child: Text(
                                '${MediaQuery.of(context).size.height / 9}'),
                          )
                        ],
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
