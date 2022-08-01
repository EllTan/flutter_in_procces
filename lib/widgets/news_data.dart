import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/News.dart';

class NewsCard extends StatelessWidget {

  final String title;
  final String desc;

  NewsCard({required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {

    return Opacity(
      opacity: 0.85,
      child: Container(
        color: Color(int.parse('0xff546e7a')),
        height: 1000,
        width: 300,
        child: ListTile(
          title: Text('$title', style: TextStyle(color: Colors.white),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                Text(
                  '$desc',
                  style: TextStyle(color: Colors.white),
                  softWrap: true,



                ),

            ],
          ),
        ),
      ),
    );
  }
}
