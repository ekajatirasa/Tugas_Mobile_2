import 'package:flutter/material.dart';
import 'package:tugasmobile/hobby_page.dart';
import 'package:tugasmobile/home/home_view.dart';
import 'package:tugasmobile/kalkulator_page.dart';
import 'package:tugasmobile/kelompok_page.dart';
import 'package:tugasmobile/login_page.dart';
import 'package:tugasmobile/stopwatch_page.dart';
import 'package:tugasmobile/theme.dart';
import 'package:tugasmobile/bantuan_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.white,
      // body: tabs[_currentIndex],
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Daftar Anggota'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent,
                      fixedSize: Size.fromWidth(200)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return KelompokPage();
                    }));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Kalkulator'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent,
                      fixedSize: Size.fromWidth(200)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CalculatorPage();
                    }));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Stopwatch'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent,
                      fixedSize: Size.fromWidth(200)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return StopwatchPage();
                    }));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Daftar Hobby'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent,
                      fixedSize: Size.fromWidth(200)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HobbyPage();
                    }));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Logout'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      fixedSize: Size.fromWidth(200)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  },
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
