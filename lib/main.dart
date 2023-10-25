import 'dart:core';
import 'package:show_user_info/userDetails.dart';

import 'userDataMdel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  static List<String> userName= ['Afsana Akter', 'Monir Hossain','Mehmate Bin Monir','Maryeam Binte Afsana','Ayrin Akter',
  'Rony Hossain','Aftab Ahmed','Tania Akter'];
  static List url =['https://st3.depositphotos.com/3591429/15528/i/450/depositphotos_155289468-stock-photo-young-indian-woman-face.jpg',
   'https://media.istockphoto.com/id/1364917563/photo/businessman-smiling-with-arms-crossed-on-white-background.jpg?s=612x612&w=0&k=20&c=NtM9Wbs1DBiGaiowsxJY6wNCnLf0POa65rYEwnZymrM=',
    'https://img.freepik.com/premium-photo/photo-document-passport-id-mature-caucasian-man-suit_262388-3596.jpg',
     'https://thumbs.dreamstime.com/b/passport-picture-businesswoman-brown-hair-isolated-white-background-cut-out-49602875.jpg',
    'https://img.freepik.com/premium-photo/indian-girl-cheerful-studio-portrait_53876-55599.jpg',
    'https://media.istockphoto.com/id/1364917563/photo/businessman-smiling-with-arms-crossed-on-white-background.jpg?s=612x612&w=0&k=20&c=NtM9Wbs1DBiGaiowsxJY6wNCnLf0POa65rYEwnZymrM=',
    'https://media.istockphoto.com/id/1364917563/photo/businessman-smiling-with-arms-crossed-on-white-background.jpg?s=612x612&w=0&k=20&c=NtM9Wbs1DBiGaiowsxJY6wNCnLf0POa65rYEwnZymrM=',
    'https://img.freepik.com/premium-photo/indian-girl-cheerful-studio-portrait_53876-55599.jpg',
    'https://st2.depositphotos.com/2783505/7767/i/450/depositphotos_77676472-stock-photo-portrait-of-a-blonde-german.jpg'];
   static List<String> userEmail = [
     'afsanaakter@gmail.com','monirhossain@gmail.com','mehmatebinmonir@gmail.com','maryeambinteafsana@gmail.com',
     'ayrinakter@gmail.com','ronyhossain@gmail.com','aftabahmed@gmail.com','taniaakter@gmail.com','taniaakter@gmail.com'
   ];
   static List<String> userMobile = [
     '01718546528', '10913722769','14938172934812','1284921349823','01718546528', '10913722769','14938172934','12849213498','12849213498'
   ];
  List<UserDataModel> userData =List.generate(
      userName.length,
       (index) => UserDataModel('${userName[index]}', '${url[index]}', '${userEmail[index]}', '${userMobile[index]}'));

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('All Users Data', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
     ),
     body: ListView.builder(
         itemCount: userData.length,
         itemBuilder: (context, index){
          return Center(
            child: Card(
              child: ListTile(
                title: Text(userData[index].name , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                leading: SizedBox(
                  width: 90,
                  height: 120,
                  child: Image.network(userData[index].imgUrl, fit: BoxFit.contain,),

                ),
                subtitle: Text(userData[index].email),

                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserDetails(
                    userDataModel: userData[index],) ));
                },
              ),
            ),
          ); 
         }
    
     ),
   );
  }
}


