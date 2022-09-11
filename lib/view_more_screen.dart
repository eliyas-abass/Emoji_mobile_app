import 'package:flutter/material.dart';

class ViewMore extends StatelessWidget {
  String title;

  ViewMore(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(216, 149, 5, 0.966),
        title: Text(title),
      ),

      body: Column(
        children: [
          createNewSizedBox(),
          Row(
            children: [
             createContainer(Colors.red),
              createSizedBox(),
              createContainer(Colors.blue),
              createSizedBox(),
              createContainer(Colors.black),
              createSizedBox(),
              createContainer(Colors.purple),
              createSizedBox(),
               createContainer(Colors.blue),
              createSizedBox(),
               createContainer(Colors.green),
              createSizedBox(),
               createContainer(Colors.yellow),
            ],
          ),
          createNewSizedBox(),
          Row(
            children: [
              createContainer(Colors.red),
              createSizedBox(),
              createContainer(Colors.blue),
              createSizedBox(),
              createContainer(Colors.black),
              createSizedBox(),
              createContainer(Colors.purple),
              createSizedBox(),
               createContainer(Colors.blue),
              createSizedBox(),
               createContainer(Colors.green),
              createSizedBox(),
               createContainer(Colors.yellow),
            ],
          ),
          createNewSizedBox(),
          Row(
            children: [
              createContainer(Colors.red),
              createSizedBox(),
              createContainer(Colors.blue),
              createSizedBox(),
              createContainer(Colors.black),
              createSizedBox(),
              createContainer(Colors.purple),
              createSizedBox(),
               createContainer(Colors.blue),
              createSizedBox(),
               createContainer(Colors.green),
              createSizedBox(),
               createContainer(Colors.yellow),
            ],
          ),
          createNewSizedBox(),
          Row(
            children: [
              createContainer(Colors.red),
              createSizedBox(),
              createContainer(Colors.blue),
              createSizedBox(),
              createContainer(Colors.black),
              createSizedBox(),
              createContainer(Colors.purple),
              createSizedBox(),
               createContainer(Colors.blue),
              createSizedBox(),
               createContainer(Colors.green),
              createSizedBox(),
               createContainer(Colors.yellow),
            ],
          ),
          createNewSizedBox(),
          Row(
            children: [
              createContainer(Colors.red),
              createSizedBox(),
              createContainer(Colors.blue),
              createSizedBox(),
              createContainer(Colors.black),
              createSizedBox(),
              createContainer(Colors.purple),
              createSizedBox(),
               createContainer(Colors.blue),
              createSizedBox(),
               createContainer(Colors.green),
              createSizedBox(),
               createContainer(Colors.yellow),
            ],
          ),
          createNewSizedBox(),
          Row(
            children: [
              createContainer(Colors.red),
              createSizedBox(),
              createContainer(Colors.blue),
              createSizedBox(),
              createContainer(Colors.black),
              createSizedBox(),
              createContainer(Colors.purple),
              createSizedBox(),
               createContainer(Colors.blue),
              createSizedBox(),
               createContainer(Colors.green),
              createSizedBox(),
               createContainer(Colors.yellow),
            ],
          ),

      ],)
      
      );
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
  SizedBox createNewSizedBox(){
    return const SizedBox(
      height: 15,
      );
  }
}