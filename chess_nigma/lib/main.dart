// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'ChessNigma', home: ChessBoard());
  }
}

class ChessSquare extends StatefulWidget {
  @override
  _ChessSquareState createState() => _ChessSquareState();
}

class _ChessSquareState extends State<ChessSquare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class ChessBoard extends StatefulWidget {
  @override
  _ChessBoardState createState() => _ChessBoardState();
}

class _ChessBoardState extends State<ChessBoard> {
  @override
  Widget build(BuildContext context) {
    var eight_nums = [for (var i = 0; i < 8; i += 1) i];
    return Scaffold(
      appBar: AppBar(
        title: Text("Chess Board"),
      ),
      body: Container(
        child: Column(
          children: [for (var i in eight_nums) ChessSquare()],
        ),
      ),
    );
  }
}
