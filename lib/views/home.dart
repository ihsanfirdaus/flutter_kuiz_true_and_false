import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kuis/model/category.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => Future.value(false),
        child: new Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(_createRoute());
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 54),
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text('Mulai Kuis',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500)
                      ),
                      
            ),
          ),
        )
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Category(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

