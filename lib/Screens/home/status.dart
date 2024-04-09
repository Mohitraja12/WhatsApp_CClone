import 'package:flutter/material.dart';
import 'package:whatsappclone/Screens/home/calls.dart';
import 'package:whatsappclone/Screens/home/community.dart';
import 'package:whatsappclone/Screens/home/home.dart';
import 'package:whatsappclone/Widget/channels_widget.dart';

class Status_Page extends StatefulWidget {
  const Status_Page({super.key});

  @override
  State<Status_Page> createState() => _Status_PageState();
}

class _Status_PageState extends State<Status_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.auto_mode, color: Colors.black),
              onPressed: () {},
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.group, color: Colors.black),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Community_Page()));
              },
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.call, color: Colors.black),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Calls_Page()));
              },
            ),
            label: 'Calls',
          ),
        ],
      ),
      appBar: AppBar(
        leading: null,
        backgroundColor: Colors.teal.shade500,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(Icons.camera_alt, color: Colors.white),
                SizedBox(width: 20),
                Icon(Icons.search, color: Colors.white),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.all(12),
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Status",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              height: 80,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.blue),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("My Status                             "),
                      Text("Tap to add status update")
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Viewed Updates"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            Divider(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Channels",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.add)
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 100),
              child: Text(
                  "Stay updated on topics that matter to you. Find channels to follow below."),
            ),
            SizedBox(height: 30),
            ChannelsList(),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 12),
                height: 50,
                width: 150,
                child: Center(child: Text("Explore More",style: TextStyle(color: Colors.white,fontSize: 17),)),
                decoration: BoxDecoration(
                    color: Colors.teal.shade500, borderRadius: BorderRadius.circular(40)),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.teal.shade500,
            onPressed: () {},
            heroTag: null,
            child: Icon(Icons.edit,color: Colors.white),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            backgroundColor: Colors.teal.shade500,
            onPressed: () {},
            heroTag: null,
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
