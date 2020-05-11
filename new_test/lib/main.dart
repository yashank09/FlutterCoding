// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text(
            'Contact Card Flutter',
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 28, horizontal: 12),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          color: Colors.deepPurple[700],
          height: 420,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/profile_picture.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  'Yashank Varshney',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.deepPurple[700]),
                  title: Text(
                    '510-246-9229',
                    style: TextStyle(
                        color: Colors.deepPurple[700],
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.deepPurple[700]),
                  title: Text(
                    'yashank.cronaldo@gmail.com',
                    style: TextStyle(
                        color: Colors.deepPurple[700],
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
