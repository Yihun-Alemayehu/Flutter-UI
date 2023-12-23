import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List messageItem = [
      ["assets/dad.jpg", "Aychew Desalegn", "Hi Yihune", "20 minutes"],
      ["assets/s.jpg", "Zerihun Kassahun", "broooo...", "35 minutes"],
      ["assets/dad.jpg", "Simon Jonah", "Endet nek ?", "1 hour"],
      ["assets/dad.jpg", "Kalkidan Egiju", "troubles will pass", "2 hours"],
      ["assets/dad.jpg", "Dr Robel", "As a Doctor ...", "2  days"],
      ["assets/dad.jpg", "Mebratu Megeze", "Abiyee", "2  days"],
      ["assets/dad.jpg", "Abebayehu Lukas", "wannay tayadasa", "2  days"],
      ["assets/11.jpg", "Hirut Belachew", "betam ykrta", "3  days"],
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(
            children: [
              // Title text
              const Row(
                children: [
                  Text(
                    'Message',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ),
                ],
              ),

              Expanded(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/dad.jpg'),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 4,
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(messageItem[index][0]),
                        ),
                        title: Text(messageItem[index][1]),
                        subtitle: Text(messageItem[index][2]),
                        trailing: Text(messageItem[index][3]),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
