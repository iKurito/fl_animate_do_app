import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fl_animate_do_app/src/pages/pages.dart';

class Pagina1Page extends StatelessWidget {
   
  const Pagina1Page({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeIn(
          duration: const Duration(milliseconds: 500),
          child: const Text('Animate_do')
        ),
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => const TwitterPage()
              ));
            },
          ),
          SlideInLeft(
            from: 100,
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(
                  builder: (_) => const Pagina1Page()
                ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, CupertinoPageRoute(
              builder: (_) => const NavegacionPage()
            ));
          },
          child: const FaIcon(FontAwesomeIcons.play)
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElasticIn(
              delay: const Duration(milliseconds: 1100),
              child: const Icon(Icons.new_releases, color: Colors.blue, size: 40)
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 2000),
              child: const Text('Titulo', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200))
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 800),
              child: const Text('Soy un texto pequeño', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))
            ),
            FadeInLeft(
              delay: const Duration(milliseconds: 1100),
              child: Container(
                width: 220,
                height: 2,
                color: Colors.blue
              ),
            )
          ],          
        ),
      )
    );
  }
}