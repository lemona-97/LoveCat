import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LoveCat());
}

class LoveCat extends StatelessWidget {
  const LoveCat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CupertinoNavigationBar(middle: Text('안녕'),),
        body: Container(width: double.infinity, height: 200,
          margin: EdgeInsets.all(20),
          color: Colors.orange,
            child: ListView(scrollDirection: Axis.horizontal,
              children: [
                Container(width: 100, color: Colors.yellow,),
                Container(width: 100, color: Colors.red,),
                Container(width: 100, color: Colors.blue,),
                Container(width: 100, color: Colors.white,),
                Container(width: 100, color: Colors.green,),
                Container(width: 100, color: Colors.purple,),
                Container(width: 100, color: Colors.pink,),
              ],
            )
        ),
        bottomNavigationBar : BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: 'Music',
              icon: Icon(Icons.music_note),
            ),
            BottomNavigationBarItem(
              label: 'Location',
              icon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              label: 'Books',
              icon: Icon(Icons.library_books),
            ),
          ],
        )
      )

    );
  }
}

