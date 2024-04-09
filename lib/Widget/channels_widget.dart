import 'package:flutter/material.dart';

class ChannelsList extends StatelessWidget {
  const ChannelsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> channelsName = [
      "The Times Of India",
      "Aaj Tak",
      "Dream11",
      "Who Cares",
      "ABP News",
      "News18 India",
      "CNN News18",
      "CSK FanClub"
    ];
    List<String> channelsImg = [
      "https://i.ibb.co/dfQTKcK/image.png",
      "https://i.ibb.co/9N18qNq/image.png",
      "https://i.ibb.co/HxMKHVv/image.png",
      "https://i.ibb.co/5TQbMY7/image.png",
      "https://i.ibb.co/JQkJPWr/image.png",
      "https://i.ibb.co/4NyZpRP/image.png",
      "https://i.ibb.co/LJfS2y1/image.png",
      "https://i.ibb.co/Tcmdy5d/image.png"
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(channelsName.length, (index) {
            return Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                    image: DecorationImage(image: NetworkImage(channelsImg[index]))),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.ibb.co/Nyvw2CS/image.png"))),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(channelsName[index]),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(left: 12, right: 12),
                    height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade500,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(child: Text("Follow")),
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
