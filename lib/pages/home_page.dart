import 'package:flutter/material.dart';
import 'package:learn_flutter/models/Series.dart';
import 'package:learn_flutter/widgets/news_data.dart';
import 'package:learn_flutter/widgets/series_card.dart';
import 'package:provider/provider.dart';

import '../models/News.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final seriesData = Provider.of<SeriesDataProvider>(context);
    final NewsData data = NewsData();


    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'The Witcher',
          style: TextStyle(fontSize: 30),
        )),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          // height: MediaQuery.of(context).size.height - 85,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/bg.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: [
              Container(
                child: ListTile(
                  title: Text(
                    '1 сезон',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'NETFLIX',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  trailing: Image(image: AssetImage('assets/images/Netflix.png'),
                  ),
                ),
              ),
              Container(
                height: 290,
                padding: const EdgeInsets.all(5.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: seriesData.items.length,
                    itemBuilder: (context, int index) =>
                        ChangeNotifierProvider.value(
                          value: seriesData.items[index],
                          child: SeriesCard(),
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'О сериале',
                  style: TextStyle(
                      color: Colors.white,
                  fontSize: 24,),
                ),
              ),


              ...data.items.map((e) =>
                  NewsCard(title: e.title, desc: e.description))
                  .toList().reversed,


            ],
          ),
        ),
      ),
      // ! - боттом бар
    );
  }
}
