import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Pets extends StatefulWidget {
  const Pets({super.key});

  @override
  State<Pets> createState() => _PetsState();
}

class _PetsState extends State<Pets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Retrieve'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('pets').snapshots(),
          builder: (context, petSnapshot) {
            if (petSnapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              final petDocs = petSnapshot.data!.docs;
              return ListView.builder(
                itemCount: petDocs.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 10,                    child: ListTile(
                      title: Text(
                        petDocs[index]['name'],
                      ),
                      subtitle: Text(petDocs[index]['animal']),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
