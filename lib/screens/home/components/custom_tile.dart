import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFE3F5FB),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.blue.shade500,
                  borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/2.jpg')
                    )
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Next Walk',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'LEO G,',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Feb 22, 8PM',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: Colors.black54,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3FBFD),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}