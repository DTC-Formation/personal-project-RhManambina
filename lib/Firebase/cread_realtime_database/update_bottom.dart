import 'package:flutter/material.dart';
import 'package:projet/Firebase/cread_realtime_database/real_time_crud.dart';

final TextEditingController namecontroller = TextEditingController();
final TextEditingController sncontroller = TextEditingController();
final TextEditingController addresscontroller = TextEditingController();

void updateBottomSheet(BuildContext context, name, id, sn, address) {
  namecontroller.text = name;
  sncontroller.text = sn;
  addresscontroller.text = address;
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.blue[100],
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Center(
                child: Text(
                  'Create your items',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: namecontroller,
                decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "eg.Manambina",
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: sncontroller,
                decoration: const InputDecoration(
                  labelText: "S.N",
                  hintText: "eg.1",
                ),
              ),
              TextField(
                controller: addresscontroller,
                decoration: const InputDecoration(
                  labelText: "Address",
                  hintText: "eg.Antananarivo",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    databaseReference.child(id).update({
                      'name': namecontroller.text.toString(),
                      'sn': sncontroller.text.toString(),
                      'address': addresscontroller.text.toString(),
                    });
                    //For clear the controller

                    Navigator.pop(context);
                  },
                  child: const Text('Update'))
            ],
          ),
        );
      });
}
