import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80); // Set your custom height here

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        backgroundColor: Color(0xFFF6FDFF),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hello,\n',
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade500,
                      fontSize: 18,
                      letterSpacing: 1,
                    ),
                  ),
                  TextSpan(
                    text: 'Ambedgar',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage('assets/images/3.jpg')
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
