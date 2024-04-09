import 'package:flutter/material.dart';

class CallsList extends StatelessWidget {
  const CallsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> callName = [
      'Rahul(2)',
      'Mota Bhai',
      "Navneet Ma'am",
      'Mota Bhai(5)',
      'Mota Bhai',
      "Komal Ma'am",
      'Mota Bhai',
      'Mayank(3)',
      '+91 365298214',
      'Rahul',
      'Prerit',
      'Mummy(3)',
      'Tushar()2',
      'Papa(2)',
      '+91 321569874',
      '+91 256398741'
    ];
    List<IconData> icon = [
      Icons.video_call,
      Icons.call,
      Icons.call,
      Icons.call,
      Icons.video_call,
      Icons.video_call,
      Icons.video_call,
      Icons.call,
      Icons.video_call,
      Icons.video_call,
      Icons.call,
      Icons.call,
      Icons.call,
      Icons.call,
      Icons.video_call,
      Icons.video_call,
    ];
    List<String> subList = [
      "Today: 6:57 PM",
      "Today: 5:29 PM",
      "Today: 3:21 PM",
      "Yesterday: 3:21 PM",
      "Yesterday: 2:28 PM",
      "Yesterday: 11:05 AM",
      "April 5, 5:54 PM",
      "April 5, 3:21 PM",
      "April 4, 4:15 PM",
      "April 4, 3:59 PM",
      "April 4, 1:12 PM",
      "April 3, 9:08 AM",
      "April 2, 10:12 PM",
      "April 2, 9:45 PM",
      "April 1, 12:00 AM",
      "March 31, 4:51 PM",
    ];
    List<IconData> subIcon = [
      Icons.call_missed_outgoing,
      Icons.call_made,
      Icons.call_missed_outgoing,
      Icons.call_made,
      Icons.call_missed_outgoing,
      Icons.call_made,
      Icons.call_missed,
      Icons.call_missed,
      Icons.call_missed,
      Icons.call_missed,
      Icons.call_missed_outgoing,
      Icons.call_missed,
      Icons.call_made,
      Icons.call_missed_outgoing,
      Icons.call_made,
      Icons.call_made,
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(callName.length, (index) {
            return SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(12),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.ibb.co/nkcmtN8/image.png"),
                            fit: BoxFit.cover)),
                  ),
                  title: Text(callName[index]),
                  subtitle: Row(
                    children: [
                      Icon(subIcon[index],color: Colors.teal.shade500,),
                      SizedBox(width: 5),
                      Text(subList[index])
                    ],
                  ),
                  trailing: Icon(icon[index],color: Colors.teal.shade500),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
