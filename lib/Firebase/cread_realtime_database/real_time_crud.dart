import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:projet/Firebase/cread_realtime_database/create_bottom_sheet.dart';
import 'package:projet/Firebase/cread_realtime_database/update_bottom.dart';

class RealTimeCrudeDatabase extends StatefulWidget {
  const RealTimeCrudeDatabase({super.key});

  @override
  State<RealTimeCrudeDatabase> createState() => _RealTimeCrudeDatabaseState();
}

final databaseReference = FirebaseDatabase.instance.ref("StoreData");

class _RealTimeCrudeDatabaseState extends State<RealTimeCrudeDatabase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('RealTime database CRUD'),
      ),
      body: Column(
        children: [
          Expanded(
              child: FirebaseAnimatedList(
                  query: databaseReference,
                  itemBuilder: (context, snapshot, index, animation) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          snapshot.child("name").value.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle:
                            Text(snapshot.child("address").value.toString()),
                        leading: CircleAvatar(
                            backgroundColor: Colors.blue[100],
                            child: Text(snapshot.child("sn").value.toString())),
                        trailing: PopupMenuButton(
                            icon: const Icon(Icons.more_vert),
                            itemBuilder: (context) => [
                                  //update operation
                                  PopupMenuItem(
                                    value: 1,
                                    child: ListTile(
                                      onTap: () {
                                        Navigator.pop(context);

                                        updateBottomSheet(
                                            context,
                                            snapshot
                                                .child("name")
                                                .value
                                                .toString(),
                                            snapshot
                                                .child("id")
                                                .value
                                                .toString(),
                                            snapshot
                                                .child("sn")
                                                .value
                                                .toString(),
                                            snapshot
                                                .child("address")
                                                .value
                                                .toString());
                                      },
                                      leading: const Icon(Icons.edit),
                                      title: const Text('Edit'),
                                    ),
                                  ),
                                  //delete operation
                                  PopupMenuItem(
                                    value: 2,
                                    child: ListTile(
                                      onTap: () {
                                        Navigator.pop(context);
                                        databaseReference
                                            .child(snapshot
                                                .child('id')
                                                .value
                                                .toString())
                                            .remove();
                                      },
                                      leading: const Icon(Icons.delete),
                                      title: const Text('Delete'),
                                    ),
                                  ),
                                ]),
                      ),
                    );
                  }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => CreateBottomSheet(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
