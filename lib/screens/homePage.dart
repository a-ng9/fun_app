import 'package:flutter/material.dart';
import 'package:fun_app/screens/drawer.dart';
import 'package:fun_app/Components/homeBottomButton.dart';
import 'package:fun_app/counterPage.dart';
import 'package:fun_app/Components/homeContainer.dart';
import 'package:fun_app/styles.dart';

class HomePage extends StatelessWidget {
  static const String id = "Home_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.timer),
            onPressed: () => Navigator.pushNamed(context, CounterPage.id),
          )
        ],
        flexibleSpace: Styles.gradientAppBar(),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeContainer(
              title: "What's New",
              image: AssetImage('images/telecom.png'),
              onPressed: () {
                print("What's New CONTAINER pressed");
              },
            ),
            HomeContainer(
              title: "Our People",
              image: AssetImage('images/people.png'),
              onPressed: () {
                print("Our People CONTAINER pressed");
              },
            ),
            HomeContainer(
              title: "Wellness",
              image: AssetImage('images/wellness.png'),
              onPressed: () {
                print("Wellness CONTAINER pressed");
              },
            ),
            HomeContainer(
              title: "Commercial News",
              image: AssetImage('images/news.png'),
              onPressed: () {
                print("Commercial News CONTAINER pressed");
              },
            ),
            HomeContainer(
              title: "Learning",
              image: AssetImage('images/learning.png'),
              onPressed: () {
                print("Learning CONTAINER pressed");
              },
            ),
            Row(
              children: [
                WhiteButton(
                  onPressed: () => print('Bottom button pressed'),
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.deepPurple[800],
                    size: 40,
                  ),
                  label: "Leaves",
                ),
                WhiteButton(
                  onPressed: () => print('Bottom button pressed'),
                  icon: Icon(
                    Icons.contacts,
                    color: Colors.green[600],
                    size: 40,
                  ),
                  label: "Directory",
                ),
                WhiteButton(
                  onPressed: () => print('Bottom button pressed'),
                  icon: Icon(
                    Icons.free_breakfast,
                    color: Colors.pink[400],
                    size: 40,
                  ),
                  label: "Cafeteria",
                ),
                WhiteButton(
                  onPressed: () => print('Bottom button pressed'),
                  icon: Icon(
                    Icons.accessibility_new,
                    color: Colors.lightBlue[500],
                    size: 40,
                  ),
                  label: "Ideas",
                ),
              ],
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
