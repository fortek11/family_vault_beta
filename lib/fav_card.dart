import 'package:flutter/material.dart';

class FavCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 170,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          gradient: LinearGradient(colors: [
            Color.fromARGB(239, 238, 78, 115),
            Color.fromARGB(255, 229, 104, 133)
          ])),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.grey.shade100.withOpacity(0.1),
                        width: 7)),
              )
            ],
          ),
          Text('Darshan Wadhva')
        ],
      ),
    );
  }
}
