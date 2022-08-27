import 'package:flutter/material.dart';
import 'package:imoji_app/view_more_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(216, 149, 5, 0.966),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Zemoji'),
            SizedBox(width: 5),
            Icon(
              Icons.emoji_emotions,
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.search), label: "Search"),
        NavigationDestination(icon: Icon(Icons.menu), label: "Menu"),
        NavigationDestination(icon: Icon(Icons.favorite), label: "Favorite"),
      ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              createImojiCard("Hand Gestures", context),
              createImojiCard("Smileys", context),
              createImojiCard("Food and Drinks", context),
              createImojiCard("Transport", context),
              createImojiCard("Events", context),
              // createImojiCard("Accessories"),
              // createImojiCard("Signs"),
              // createImojiCard("People"),
              // createImojiCard("Games"),
              // createImojiCard("Plants and Animals"),
              // createImojiCard("Flags"),
              // createImojiCard("Animated Moods"),
            ],
          ),
        ),
      ),
    );
  }

  Container createContainer(color) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      width: 40,
      height: 40,
    );
  }

  SizedBox createSizedBox() {
    return const SizedBox(
      width: 15,
    );
  }

  Container createImojiCard(String title, context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      height: 100,
      color: const Color(0xFFD9D9D9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              createContainer(Colors.green),
              createSizedBox(),
              createContainer(Colors.blue),
              createSizedBox(),
              createContainer(Colors.green),
              createSizedBox(),
              createContainer(Colors.blue),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewMore(title)),
                  );
                },
                child: Text('View More'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
