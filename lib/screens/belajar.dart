// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:golearnlish/videocard.dart';
import 'package:golearnlish/screens/detail.dart';

class belajar extends StatefulWidget {
  const belajar({super.key});

  @override
  State<belajar> createState() => _belajarState();
}

class _belajarState extends State<belajar> {
  List<Map<String, dynamic>> dataUtama = [
    {
      "title": "Adobe XD Prototyping",
      "desc":
          "Update 2 jam lalu. Di mana memiliki kekuatan super (Kebiasaan) adalah norma, Izuku diintimidasi karena dilahirkan dengan tidak ada.",
      "hours": "10 hours, 19 lessons",
      // "image":
      //     Image.asset("lib/assets/images/video.jpg", width: 40, height: 40),
      "progress": "25%",
    },
    {
      "title": "Sketch shortcuts and tricks",
      "desc":
          "Update 2 jam lalu. Di mana memiliki kekuatan super (Kebiasaan) adalah norma, Izuku diintimidasi karena dilahirkan dengan tidak ada.",
      "hours": "10 hours, 19 lessons",
      // "image":
      //     Image.asset("lib/assets/images/video.jpg", width: 40, height: 40),
      "progress": "50%",
    },
    {
      "title": "UI Motion Design in After Effects",
      "desc":
          "Update 2 jam lalu. Di mana memiliki kekuatan super (Kebiasaan) adalah norma, Izuku diintimidasi karena dilahirkan dengan tidak ada.",
      "hours": "10 hours, 19 lessons",
      // "image":
      //     Image.asset("lib/assets/images/video.jpg", width: 40, height: 40),
      "progress": "75%",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Video',
          style: TextStyle(color: Color(0xFF1A1C24)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: dataUtama.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detail(
                                    dataUtama: dataUtama[index],
                                  )));
                    },
                    child: CardCourses(
                      image: Image.asset("lib/assets/images/video.jpg",
                          width: 40, height: 40),
                      color: Colors.white,
                      title: '${dataUtama[index]["title"]}',
                      hours: '${dataUtama[index]["hours"]}',
                      progress: '${dataUtama[index]["progress"]}',
                      percentage: 0.25,
                    ),
                  ),
                  // CardCourses(
                  //   image: Image.asset("lib/assets/images/video.jpg",
                  //       width: 40, height: 40),
                  //   color: Colors.white,
                  //   title: '${dataUtama[index]["title"]}',
                  //   hours: '${dataUtama[index]["hours"]}',
                  //   progress: '${dataUtama[index]["progress"]}',
                  //   percentage: 0.5,
                  // ),
                  // CardCourses(
                  //   image: Image.asset("lib/assets/images/video.jpg",
                  //       width: 40, height: 40),
                  //   color: Colors.white,
                  //   title: '${dataUtama[index]["title"]}',
                  //   hours: '${dataUtama[index]["hours"]}',
                  //   progress: '${dataUtama[index]["progress"]}',
                  //   percentage: 0.75,
                  // ),
                ],
              ),
            );
          },
        ),
      ),
      backgroundColor: Color(0xFFF2F6FC),
    );
  }
}
