import 'package:flutter/material.dart';
import 'package:pagetransitions/pages/page2_page.dart';

class Page1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Center(
        child: Text('Page 1'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
          Navigator.push(context, _route());
        },
        ),
    );
  }

  Route<Object> _route() {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => Page2Page(),
      transitionDuration: Duration(milliseconds: 800),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curveAnimation = CurvedAnimation(parent:animation,curve:Curves.easeInOut);
        // return SlideTransition(
        //   position: Tween<Offset>(begin: Offset(1,1),end: Offset.zero).animate(curveAnimation),
        //   child: child,
        // );
        // return ScaleTransition(
        //   scale: Tween<double>(begin: 0,end: 1).animate(curveAnimation),
        //   child: child,
        // );
        // return RotationTransition(
        //   turns: Tween<double>(begin: 0,end: 1).animate(curveAnimation),
        //   child: child,
        // );
        // return FadeTransition(
        //   opacity: Tween<double>(begin: 0,end: 1).animate(curveAnimation),
        //   child: child,
        // );
        return ScaleTransition(
          scale: Tween<double>(begin: 0,end: 1).animate(curveAnimation),
          child: FadeTransition(
            opacity: Tween<double>(begin: 0,end: 1).animate(curveAnimation),
            child: child,
          ),
        );
      },
    );
  }
}