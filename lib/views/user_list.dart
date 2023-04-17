import 'package:crud_app/components/user_tile.dart';
import 'package:crud_app/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    const users = {...dummyUsers};
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listagem de Usuarios'),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
