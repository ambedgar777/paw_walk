import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paw_walk/screens/home/components/custom_build_view.dart';
import 'package:paw_walk/screens/home/components/custom_grid_view.dart';
import 'package:paw_walk/screens/home/components/custom_tile.dart';
import 'components/CustomAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6FDFF),
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTile(),
              CustomGridView(),
              CustomBuildView(),
            ],
          ),
        ),
      ),
    );
  }
}
