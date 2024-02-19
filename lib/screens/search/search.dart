import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paw_walk/screens/home/components/custom_build_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6FDFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 60.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.grey.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.location_on),
                          border: InputBorder.none,
                          hintText: 'Paris, near me',
                          suffixIcon: Icon(Icons.filter_list_sharp),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFF86C1D3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.grey.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Center(child: FaIcon(FontAwesomeIcons.list)),
                  )
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Paw walkers around',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '(4 results)',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              CustomBuildView(),
            ],
          ),
        ),
      ),
    );
  }
}
