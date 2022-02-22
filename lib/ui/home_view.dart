import 'package:fanbase/ui/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.tag_faces),
        title: const Text("Tomys Fanpage"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => FirebaseAuth.instance.signOut(),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [const PopupMenuItem(child: Text('Settings'))];
            },
          )
        ],
      ),
      body: const Center(child: Text("Welcome to Tomy's Fanpage")),
    );
    StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomeView();
          } else {
            return Authentication();
          }
        });
  }
}
