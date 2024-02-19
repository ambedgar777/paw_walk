import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final List<Color> containerColor = [
    const Color(0xFFF6E8CD),
    const Color(0xFFFCE1F1),
    const Color(0xFFD5EEFF),
    const Color(0xFFDDEDE9),
  ];
  final List<String> imagePath = [
    'assets/icons/3d-alarm.png',
    'assets/icons/heart.png',
    'assets/icons/stack-of-books.png',
    'assets/icons/calendar.png',
  ];
  final List<String> text = [
    'Last \nSearch',
    'Favourite \nWalkers',
    'Past \nWalks',
    'Planned \nWalks',
  ];

  CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      //color: Colors.red,
      child: GridView.builder(
        itemCount: 4,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 60),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          childAspectRatio: 1.2,
          mainAxisSpacing: 30,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
              color: containerColor[index],
              borderRadius: BorderRadius.circular(28),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath[index],
                  height: 60,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      text[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        letterSpacing: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
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
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
