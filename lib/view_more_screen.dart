import 'package:flutter/material.dart';

class ViewMore extends StatelessWidget {
  String title;

  ViewMore(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(216, 149, 5, 0.966),
        title: Text(this.title),
      ),
      body: const Center(
        child: Text("View more screen new"),
      ),
    );
  }
}
