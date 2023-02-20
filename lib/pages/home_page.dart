import 'package:flutter/material.dart';

class AnimalUI extends StatelessWidget {
  const AnimalUI({super.key});

  @override
  Widget build(BuildContext context) {
    final animalImageLink = "assests/images/elephant1.jpeg";
    final textStyle = TextStyle(
        color: Colors.brown, fontSize: 35, fontWeight: FontWeight.bold);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                animalImageLink,
                width: 300,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.all(2),
                  child: Text("Name: Elephant", style: textStyle)),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.all(2),
                  child: Text("Age:45", style: textStyle)),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.all(2),
                  child: Text("Gender:Male", style: textStyle)),
            ),
          ],
        ),
      ),
    );
  }
}
