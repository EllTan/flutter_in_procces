import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/models/Series.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemPage extends StatelessWidget {
  final String seriesId;

  ItemPage({Key? key, required this.seriesId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        Provider.of<SeriesDataProvider>(context).getSeriesById(seriesId);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            data.title,
            style: GoogleFonts.macondo(),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Color(int.parse('0xff546e7a')),
        child: ListView(
          children: [
            Hero(
              tag: data.img,
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(data.img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Divider(),
            Card(
              elevation: 5.0,
              margin:
                  const EdgeInsets.symmetric(horizontal: 35.00, vertical: 20.0),
              child: Container(
                color: Color(int.parse('0xff9e9e9e')),
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.title,
                      style: TextStyle(fontSize: 26.0),
                    ),
                    Text('дата выхода. так же добавить в SeriesDatad'),
                    SizedBox(
                      height: 80.0,
                    ),
                    Column(
                      children: [
                        FlatButton(
                          onPressed: ()  {
                            // добавить переход на страницу
                          },
                          color: Colors.red, child: Text('fff'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
