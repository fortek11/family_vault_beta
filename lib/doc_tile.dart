import 'package:flutter/material.dart';

class DocumentTile extends StatelessWidget {
  const DocumentTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          child: Icon(
            Icons.file_copy,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17.5),
            gradient: LinearGradient(
              colors: [Color(0xffbf5ae0), Color(0xffa811da)],
              stops: [0, 1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
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
          color: Colors.grey.shade400,
          size: 12,
        ),
      ),
    );
  }
}
