import 'package:flutter/material.dart';
import 'package:whatsappclone/Screens/home/calls.dart';
import 'package:whatsappclone/Screens/home/home.dart';
import 'package:whatsappclone/Screens/home/status.dart';

class Community_Page extends StatefulWidget {
  const Community_Page({super.key});

  @override
  State<Community_Page> createState() => _Community_PageState();
}

class _Community_PageState extends State<Community_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade500,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("WhatsApp", style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold)),
            Row(
              children: [
                Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                PopupMenuButton(constraints: BoxConstraints.tightFor(width: 220),
                  elevation: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.more_vert,color: Colors.white,),
                  color: Colors.white,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("settings",style: TextStyle(fontSize: 17),),
                      value: 1,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.auto_mode, color: Colors.black),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Status_Page()));
              },
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.group, color: Colors.black),
              onPressed: () {
                print("Community");
              },
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.call, color: Colors.black),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Calls_Page()));
              },
            ),
            label: 'Calls',
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                      NetworkImage("https://i.ibb.co/W3QrGQC/comunity.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "See example communities >",
              style: TextStyle(color: Colors.teal.shade500),
            ),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.teal.shade500,
                  borderRadius: BorderRadius.circular(18)),
              child: Center(
                child: Text(
                  "Start Your Community",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
