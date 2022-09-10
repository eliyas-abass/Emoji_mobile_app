import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: Container(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: "search",
              icon: Icon(Icons.search),
              // hintStyle: GoogleFonts.notosans(fontSize: 14.0),
            ),
          ),
        ),
      ),
    );
  }
}
