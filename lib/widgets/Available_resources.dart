import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:phone_verification/widgets/Items.dart';

class Available extends StatelessWidget {
  String location;
  Available(this.location);
  final Query query = FirebaseFirestore.instance.collection('rent').orderBy(
        'createdAt',
        descending: true,
      );
  // .where('service', isNotEqualTo: "Oxygen");

  @override
  Widget build(BuildContext context) {
    print(location);
    // final user = FirebaseAuth.instance.currentUser;
    return FutureBuilder(
      future: query.get(),
      builder: (ctx, AsyncSnapshot<QuerySnapshot> availableSnapshot) {
        if (availableSnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final Docs = availableSnapshot.data.docs;

        return ListView.builder(
            shrinkWrap: false,
            reverse: false,
            itemCount: Docs.length,
            itemBuilder: (ctx, index) {
              Widget widget = Docs[index]
                      .data()['location']
                      .toString()
                      .toUpperCase()
                      .contains(location.toUpperCase())
                  ? Item(
                      Docs[index].data()['name'].toString(),
                      Docs[index].data()['service'].toString(),
                      Docs[index].data()['description'].toString(),
                      Docs[index].data()['quantity'].toString(),
                      Docs[index].data()['location'].toString(),
                      Docs[index].data()['contact'].toString(),
                      Docs[index].data()['price'].toString(),
                      Docs[index].data()['provider'].toString(),
                      Docs[index].data()['id'].toString())
                  : Text("");
              return widget;
            });
      },
    );
  }
}
