import 'package:flutter/material.dart';
import 'main.dart';
import 'userDataMdel.dart';


class UserDetails extends StatelessWidget{
  final UserDataModel userDataModel;

  const UserDetails({super.key, required this.userDataModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title:  Text(userDataModel.name),
    ),
      body: Center(
        child: Column(
          children: [
            Image.network(userDataModel.imgUrl),
            Padding(
              padding:EdgeInsets.fromLTRB(4,13,4,4),
              child: Text(userDataModel.name),
            ),
            Text(userDataModel.email),
            Text(userDataModel.phone)

        ],
    ),
      ),

    );
  }

}