import 'package:cloud_firestore/cloud_firestore.dart';

create(String colName, docName, name, animal, int age) async {
  await FirebaseFirestore.instance.collection(colName).doc(docName).set({
    'name': name,
    'animal': animal,
    'age': age,
  });
  print('database updated');
}

update(String collName, docName, feild, var newfieldvalue) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .update({feild: newfieldvalue});
  print('database updated');
}

delete(String collName, docName) async {
  await FirebaseFirestore.instance.collection(collName).doc(docName).delete();
  print('Deleted');
}
