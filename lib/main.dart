import 'package:family_vault_beta/all_docs_screen.dart';
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
 
  final List<Map<String, dynamic>> items = [
    {'label': 'Plus+', 'icon': Icons.add},
    {'label': 'Travel', 'icon': Icons.public},
    {'label': 'Payments', 'icon': Icons.attach_money},
    {'label': 'Voucher', 'icon': Icons.card_giftcard},
  ];

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/search_filter.png'),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 2,
                ),
                // Text(
                //   ' Your vault members',
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                SizedBox(
                  height: 5,
                ),
                  Text(
              '    Vault Members',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
                Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(items[index]['icon'], size: 20),
                    const SizedBox(width: 6),
                    Text(items[index]['label']),
                  ],
                ),
              ),
            );
          },
        ),
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
              height: 10,
            ),
    Row(children: [
      Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 130,
        height: 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color.fromARGB(163, 55, 98, 192), Color.fromARGB(255, 58, 105, 206)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 25,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dots and Icon Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Folder Icon
                Container( padding: const EdgeInsets.all(5.5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                     borderRadius: BorderRadius.circular(15),
                     
                    ),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.7),
                     borderRadius: BorderRadius.circular(10),
                     
                    ),
                    child:SizedBox(height: 30, width: 30,child: Image.asset('assets/govt.png')),
                  ),
                ),
                // Top Dots
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: List.generate(3, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: 4,
                        height: 4,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Aadhar Card',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            // Browse Button
            Container(
              height: 30,
          
              decoration: BoxDecoration(
                color: Colors.black87.withOpacity(0.2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  // Browse Text Button
                  Container(
                    width: 60,
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        'Browse',
                        style: TextStyle(
                          color: Color.fromARGB(255, 58, 105, 206),
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
               
                FittedBox(child: Image.asset('assets/arrows.png',scale: 1.3,)),
                
                ],
              ),
            ),
          ],
        ),
      ),
    ),Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 130,
        height: 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color.fromARGB(163, 55, 98, 192), Color.fromARGB(255, 58, 105, 206)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 25,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dots and Icon Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Folder Icon
                Container( padding: const EdgeInsets.all(5.5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                     borderRadius: BorderRadius.circular(15),
                     
                    ),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.7),
                     borderRadius: BorderRadius.circular(10),
                     
                    ),
                    child:SizedBox(height: 30, width: 30,child: Image.asset('assets/healthcare.png')),
                  ),
                ),
                // Top Dots
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: List.generate(3, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: 4,
                        height: 4,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Medical Report',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            // Browse Button
            Container(
              height: 30,
          
              decoration: BoxDecoration(
                color: Colors.black87.withOpacity(0.2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  // Browse Text Button
                  Container(
                    width: 60,
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        'Browse',
                        style: TextStyle(
                          color: Color.fromARGB(255, 58, 105, 206),
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
               
                FittedBox(child: Image.asset('assets/arrows.png',scale: 1.3,)),
                
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 130,
        height: 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color.fromARGB(163, 55, 98, 192), Color.fromARGB(255, 58, 105, 206)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 25,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dots and Icon Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Folder Icon
                Container( padding: const EdgeInsets.all(5.5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                     borderRadius: BorderRadius.circular(15),
                     
                    ),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.7),
                     borderRadius: BorderRadius.circular(10),
                     
                    ),
                    child:SizedBox(height: 30, width: 30,child: Image.asset('assets/govt.png')),
                  ),
                ),
                // Top Dots
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: List.generate(3, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: 4,
                        height: 4,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'PAN Card',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            // Browse Button
            Container(
              height: 30,
          
              decoration: BoxDecoration(
                color: Colors.black87.withOpacity(0.2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  // Browse Text Button
                  Container(
                    width: 60,
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        'Browse',
                        style: TextStyle(
                          color: Color.fromARGB(255, 58, 105, 206),
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
               
                FittedBox(child: Image.asset('assets/arrows.png',scale: 1.3,)),
                
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    ],),
                // SizedBox(
                //   height: 200,
                //   child: ListView.builder(
                //       scrollDirection: Axis.horizontal,
                //       itemCount: 4,
                //       shrinkWrap: true,
                //       itemBuilder: (context, index) {
                //         return Image.asset(
                //           'assets/Storage 1-.png',
                //           scale: 2.8,
                //         );
                //       }),
                // ),
              ],
            ),
           
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
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AllDocsScreen();
                          }));
                        },
                        child: Row(
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return DocumentTile('education');
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
