import 'package:flutter/material.dart';
import 'package:imoji_app/menu_screen.dart';
import 'package:imoji_app/search_screen.dart';
import 'package:imoji_app/view_more_screen.dart';
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentScreenIndex = 0;

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
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreenIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentScreenIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.search), label: "Search"),
          NavigationDestination(icon: Icon(Icons.menu), label: "Menu"),
          NavigationDestination(icon: Icon(Icons.favorite), label: "Favorite"),
        ],
      ),
      body: createBody(context),
    );
  }

  Widget createBody(BuildContext context) {
    if (currentScreenIndex == 0) {
      return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              createImojiCard("Hand Gestures", context),
              createImojiCard("Smileys", context),
              createImojiCard("Food and Drinks", context),
              createImojiCard("Transport", context),
              createImojiCard("Events", context),
              createImojiCard("Accessories", context),
              createImojiCard("Signs", context),
              createImojiCard("People", context),
              createImojiCard("Games", context),
              createImojiCard("Plants and Animals", context),
              createImojiCard("Flags", context),
              createImojiCard("Animated Moods", context),
            ],
          ),
        ),
      );
    }

    if (currentScreenIndex == 1) {
      return const SearchScreen();
    }

    if (currentScreenIndex == 2) {
      return const MenuScreen();
    }

    return const Center(child: Text("Favorite"));
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
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
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
              createContainer(Colors.blue),
              createSizedBox(),
              createContainer(Colors.blue),
              createSizedBox(),
              createContainer(Colors.green),
              createSizedBox(),
              createContainer(Colors.blue),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewMore(title),
                    ),
                  );
                },
                child: const Text('View More'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
