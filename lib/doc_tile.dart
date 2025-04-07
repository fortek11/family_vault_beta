import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DocumentTile extends StatelessWidget {
  final String category;

  DocumentTile(this.category);

  LinearGradient returnGradient(String category) {
    switch (category) {
      case 'govt':
        return LinearGradient(
          colors: [Color(0xffbf5ae0), Color(0xffa811da)],
          stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case 'healthcare':
        return LinearGradient(
          colors: [Color(0xff0055ff), Color(0xff9ebeff)],
          stops: [0, 1],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        );
      case 'work':
        return LinearGradient(
          colors: [
            Color.fromARGB(255, 216, 14, 88),
            Color.fromARGB(255, 255, 75, 141)
          ],
          stops: [0, 1],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        );

      case 'education':
        return LinearGradient(
          colors: [Color(0xff4e54c8), Color(0xff8f94fb)],
          stops: [0, 1],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        );

      default:
        return LinearGradient(
          colors: [Color(0xfff09819), Color(0xffedde5d)],
          stops: [0, 1],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.symmetric(vertical: 8.5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26, width: 0.5),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          child: Image.asset('assets/govt.png'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17.5),
              gradient: returnGradient(category)),
        ),
        title: Text(
          'Driving License',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.grey.shade800),
        ),
        subtitle: Text(
          'Darshan | Govt. Document',
          style: TextStyle(color: Colors.grey.shade600),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.grey.shade500,
          size: 12,
        ),
      ),
    );
  }
}
