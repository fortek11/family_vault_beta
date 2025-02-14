import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: FamilyVault(),
    theme: ThemeData(textTheme: GoogleFonts.figtreeTextTheme()),
  ));
}

class FamilyVault extends StatelessWidget {
  const FamilyVault({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/profile_pic.png",
                    scale: 2.1,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Darshan Wadhva",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined))
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Image.asset('assets/search_filter.png')
          ],
        ),
      ),
    );
  }
}
