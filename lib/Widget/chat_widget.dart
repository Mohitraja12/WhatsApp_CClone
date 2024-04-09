import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> chatList = [
      'BCA D2303',
      'Mohit LPU',
      "Navneet Ma'am",
      'Mota Bhai',
      'Tech Bliss',
      "Komal Ma'am",
      'Daljit',
      'Mayank',
      'Neelam',
      'Rahul',
      'Prerit',
      'Chahat',
      'Tushar',
      'My Jio',
      'Flipkart',
      'WhatsApp'
    ];
    List<String> subList = [
      "You: Fee is 249",
      "Ok",
      "Okay Ma'am",
      "Ajao jaldi",
      "Rahul: https://meet.google.com/wte-h...",
      "From 1 - 3",
      "you deleted this message",
      "Ho jayega",
      "I on my way..",
      "Good Night",
      "Hua Ki nahi",
      "Ho raha hai",
      "Aa rahe ho ki nahi",
      "You can avail this offer by clicking the li..",
      "Big billion days is approaching you bu 21-01-2..",
      ""
    ];
    List<IconData> icon = [
      Icons.done_all_sharp,
      Icons.done,
      Icons.done_all_sharp,
      Icons.done,
      Icons.done_all_sharp,
      Icons.done,
      Icons.done_all_sharp,
      Icons.done,
      Icons.done_all_sharp,
      Icons.done,
      Icons.done_all_sharp,
      Icons.done,
      Icons.done_all_sharp,
      Icons.image,
      Icons.done_all_sharp,
      Icons.done,
    ];
    List<String> time = [
      "5:53 PM",
      "4:21 PM",
      "yesterday",
      "yesterday",
      "yesterday",
      "yesterday",
      "yesterday",
      "yesterday",
      "4/4/24",
      "4/4/24",
      "3/4/24",
      "3/4/24",
      "2/4/24",
      "2/4/24",
      "2/4/24",
      "1/4/24",
    ];
    List<String> imgUrl = [
      "https://i.ibb.co/CnDc30X/image.png",
      "https://i.ibb.co/r0s6mZD/image.png",
      "https://i.ibb.co/hybP69P/image.png",
      "https://i.ibb.co/2nZmHQf/image.png",
      "https://i.ibb.co/RcdBqzm/image.png",
      "https://i.ibb.co/nkcmtN8/image.png",
      "https://i.ibb.co/r0s6mZD/image.png",
      "https://i.ibb.co/r0s6mZD/image.png",
      "https://i.ibb.co/Bgh7dvm/image.png",
      "https://i.ibb.co/nkcmtN8/image.png",
      "https://i.ibb.co/Bgh7dvm/image.png",
      "https://i.ibb.co/Bgh7dvm/image.png",
      "https://i.ibb.co/Bgh7dvm/image.png",
      "https://i.ibb.co/8Yy89pK/image.png",
      "https://i.ibb.co/ydJVjNJ/image.png",
      "https://i.ibb.co/pLhjWvL/image.png"
    ];
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          height: 70,
          width: double.infinity,
          color: Colors.teal.shade500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    "WhatsApp",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.camera_alt,color: Colors.white),
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
                        child: Text("New group ",style: TextStyle(fontSize: 17),),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("New broadcast",style: TextStyle(fontSize: 17),),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Text("Linked device",style: TextStyle(fontSize: 17),),
                        value: 8,
                      ),
                      PopupMenuItem(
                        child: Text("Started messages",style: TextStyle(fontSize: 17),),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("Payments",style: TextStyle(fontSize: 17),),
                        value: 1,
                      ),
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
        Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.7))),
              ),
            )),
        SizedBox(height: 15),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Icon(Icons.archive_outlined),
              SizedBox(width: 15),
              Text("Archived")
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ...List.generate(chatList.length, (index) {
          return ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  image: DecorationImage(
                      image: NetworkImage(imgUrl[index]), fit: BoxFit.cover)),
            ),
            title: Text(chatList[index]),
            subtitle: Row(
              children: [
                Icon(
                  icon[index],
                  size: 15,
                ),
                SizedBox(width: 2),
                Text(
                  subList[index],
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            trailing: Text(time[index]),
            // Placeholder for last message time
            onTap: () {
              // Handle chat selection
            },
          );
        })
      ]),
    );
  }
}
