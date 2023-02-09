import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPeople() async {
  List people = [];
  QuerySnapshot querySnapshot = await db.collection('people').get();
  for (var doc in querySnapshot.docs) {
    Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
    Map person = {
      "name": data["name"],
      "description": data["description"],
      "image": data["image"],
      "uid": doc.id,
    };
    people.add(person);
  }
  return people;
}

// Guardar un name en base de datos
Future<void> addPeople(String name, String description, String image) async {
  Map<String, dynamic> data = {
    "name": name,
    "description": description,
    "image": image
  };

  await db.collection("people").add(data);
}


// Actualizar un name en base de datos
Future<void> updatePeople(String uid, String name, String description, String image) async {
  await db.collection("people").doc(uid).set({
    "name": name,
    "description": description,
    "image": image
  });  
}




// Borrar datos de Firebase
Future<void> deletePeople(String uid) async {
  await db.collection("people").doc(uid).delete();
}
