import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class ViewMore extends StatefulWidget {
  final String title;

  const ViewMore(this.title, {Key? key}) : super(key: key);

  @override
  State<ViewMore> createState() => _ViewMoreState();
}

class _ViewMoreState extends State<ViewMore> {
  List<Map> icons = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(216, 149, 5, 0.966),
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (icons.isNotEmpty)
              Wrap(
                spacing: 16, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                children: generateEmojiFromIcon(),
              ),
            MaterialButton(
                child: const Text("Fetch Data"),
                onPressed: () {
                  fetchImoji();
                }),
            const Text(
              "\u{1F920}",
              style: TextStyle(
                fontFamily: "Joypixels",
                fontSize: 64,
              ),
            ),
          ],
        ));
  }

  fetchImoji() async {
    final url = Uri.parse('https://api.emojisworld.fr/v1/search?q=party');
    final json = await http.get(url);
    List jsonResponse = jsonDecode(json.body)["results"];

    List<Map> mapped =
        jsonResponse.map((emoji) => {"emoji": emoji["emoji"]}).toList();

    setState(() {
      icons = mapped;
    });
  }

  List<Text> generateEmojiFromIcon() {
    return icons
        .map((icon) => Text(
              "${icon["emoji"]}",
              style: const TextStyle(
                fontSize: 48,
                fontFamily: "Joypixels",
              ),
            ))
        .toList();
  }

  Container createContainer(color) {
    return Container(
      margin: const EdgeInsets.all(7),
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

  SizedBox createNewSizedBox() {
    return const SizedBox(
      height: 15,
    );
  }
}
