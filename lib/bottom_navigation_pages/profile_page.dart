// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileNavBar extends StatelessWidget {
  const ProfileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: SizedBox(width: 20),
        title: Text('Profile'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                color: Colors.deepPurple,
              ),
              Column(
                children: [
                  Container(
                    height: 140,
                    width: 70,
                    decoration: BoxDecoration(),
                    child: Icon(Icons.person, size: 50),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
