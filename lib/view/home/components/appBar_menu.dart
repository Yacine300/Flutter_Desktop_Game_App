import 'dart:ui';

import 'package:flutter/material.dart';

class AppBarMenu extends StatelessWidget {
  const AppBarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return SizedBox(
        width: constraint.maxWidth * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: constraint.maxWidth * 0.6,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5), fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.white.withOpacity(0.04),
                  filled: true,
                  prefixIcon:
                      Icon(Icons.search, color: Colors.white.withOpacity(0.5)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 15.0),
                ),
              ),
            ),
            const Spacer(),
            Stack(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.08),
                        ),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 35, // diameter = 2 * radius
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),

                border: Border.all(
                    color: const Color.fromARGB(136, 66, 0, 96),
                    width: 2), // Adjust border color and width as needed
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://i.pinimg.com/564x/ed/53/ff/ed53ffbe4dcfea4c2df35736156ea3e7.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
