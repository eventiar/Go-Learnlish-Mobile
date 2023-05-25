import 'package:flutter/material.dart';
import 'package:golearnlish/dasboard.dart';
import 'package:golearnlish/navigation.dart';
import 'package:golearnlish/screens/belajar.dart';

class Detail extends StatelessWidget {
  Map<String, dynamic> dataUtama;

  Detail({required this.dataUtama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                dataUtama["title"],
                style: TextStyle(fontSize: 24, color: Colors.green),
              ),
              Text(dataUtama["desc"], style: TextStyle(fontSize: 15)),
              TextButton(
                child: const Text('Kembali',
                    style: TextStyle(color: Colors.green)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => navigation()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
