import 'package:flutter/material.dart';
import 'package:whatsappclone/Screens/home/calls.dart';
import 'package:whatsappclone/Screens/home/community.dart';
import 'package:whatsappclone/Screens/home/status.dart';
import 'package:whatsappclone/Widget/chat_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.message,
                  color: Colors.black,
                ),
              ),
              label: 'Chats'),
          BottomNavigationBarItem(
              icon:
                  InkWell(onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Status_Page()));
                  },
                      child: Icon(Icons.auto_mode, color: Colors.black54)),
              label: 'Updates'),
          BottomNavigationBarItem(
              icon: InkWell(onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Community_Page()));
              },child: Icon(Icons.groups, color: Colors.black54)),
              label: 'Community'),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Calls_Page()));
                  },
                  child: Icon(Icons.call, color: Colors.black54)),
              label: 'Calls')
        ],
      ),
      body: ChatList(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade500,
        onPressed: () {},
        child: Icon(Icons.chat,color: Colors.white),
      ),
    );
  }
}
