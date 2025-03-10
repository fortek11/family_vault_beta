import 'package:family_vault_beta/doc_tile.dart';
import 'package:flutter/material.dart';

class AllDocsScreen extends StatelessWidget {
  const AllDocsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Documents',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [TextButton(onPressed: () {}, child: Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return DocumentTile('education');
          },
          itemCount: 5,
          shrinkWrap: true,
        ),
      ),
    );
  }
}
