import 'package:crud/databasefunction.dart';
import 'package:crud/pets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('CRUD OPERATIONS'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              CupertinoButton(
                  color: Colors.blue,
                  child: Text('Create'),
                  onPressed: () {
                    create(
                      'pets',
                      'bully',
                      'bully',
                      'bog',
                      27,
                    );
                  }),
              SizedBox(
                height: 10,
              ),
              CupertinoButton(
                color: Colors.blue,
                child: Text('Update'),
                onPressed: () {
                  update(
                    'pets',
                    'tom',
                    'age',
                    14,
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              CupertinoButton(
                  color: Colors.blue,
                  child: Text('Retrieve'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pets(),
                      ),
                    );
                  }),
              SizedBox(
                height: 10,
              ),
              CupertinoButton(
                  color: Colors.blue,
                  child: Text('Delete'),
                  onPressed: () {
                    delete('pets', 'tom');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
