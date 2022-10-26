import 'package:flutter/material.dart';

class HobbyPage extends StatefulWidget {
  const HobbyPage({Key? key}) : super(key: key);

  @override
  _HobbyPageState createState() => _HobbyPageState();
}

int _currentIndex = 0;

class _HobbyPageState extends State<HobbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Hobby Kelompok'),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Image.asset(
                  ('assets/images/hobby_games.jpg'),
                  width: 200,
                  height: 150,
                ),
                Text(
                  '   I. Muhammad Al Husain S\n'
                  '   Hobby saya adalah main game.\n'
                  '   Game yang biasa saya mainkan adalah Mobile Legends.\n'
                  '   Saya biasanya Push Rank bersama Eka dan Akbar \n'
                  '   hingga Rank Mythic',
                  style: TextStyle(fontSize: 18.0, color: Colors.black, fontFamily: 'Lato'),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  ('assets/images/hobby_music.png'),
                  width: 200,
                  height: 150,
                ),
                Text(
                  '   II. Eka Jatirasa\n'
                  '   Hobby saya adalah mendengarkan musik.\n'
                  '   Genre favorit musik yang saya dengarkan bermacam-macam\n'
                  '   dari genre musik metal hingga Kpop\n'
                  '   Band-band yang biasa saya dengarkan meliputi\n'
                  '   System Of A Down, Veil of Maya, \n'
                  '   Bring Me The Horizon dan juga Red Velvet.',
                  style: TextStyle(fontSize: 18.0, color: Colors.black, fontFamily: 'Lato'),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  ('assets/images/hobby_soccer.jpeg'),
                  width: 200,
                  height: 150,
                ),
                Text(
                  '   III. Lutfito Al Ghani\n'
                  '   Hobby saya adalah menonton bola,\n'
                  '   Akan tetapi saya tidak bisa bermain bola\n'
                  '   Klub favorit saya adalah Bayern Munchen\n'
                  '   Pemain favorit saya Thomas Muller',
                  style: TextStyle(fontSize: 18.0, color: Colors.black, fontFamily: 'Lato'),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
