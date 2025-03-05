import 'package:family_vault_beta/card_carousel.dart';
import 'package:family_vault_beta/doc_tile.dart';
import 'package:family_vault_beta/fav_card.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Image.asset('assets/search_filter.png'),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '    Your vault members',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade100,
                          spreadRadius: 3,
                          blurRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.person_outline),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Darshan'),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.person_outline),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Mansi'),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.person_outline),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Nandu'),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.person_add_alt_1_outlined),
                          ),
                          Text(
                            'Add Member',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Text(
                  '    Your Favorites',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          'assets/Storage 1-.png',
                          scale: 2.8,
                        );
                      }),
                ),
              ],
            ),
            CarouselScreen(),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent files',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'View More ',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.blue,
                            size: 12,
                          )
                        ],
                      ),
                    ],
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return DocumentTile();
                    },
                    itemCount: 5,
                    shrinkWrap: true,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 10,
                        spreadRadius: 10),
                  ],
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
