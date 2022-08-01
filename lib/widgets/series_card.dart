import 'package:flutter/material.dart';
import 'package:learn_flutter/models/Series.dart';
import 'package:learn_flutter/pages/series_page.dart';
import 'package:provider/provider.dart';

class SeriesCard extends StatelessWidget {
  SeriesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final series = Provider.of<Series>(context);

    return Opacity(
      opacity: 0.75,
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Color(
            int.parse(series.color),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                    builder: (context) => ItemPage(seriesId: series.id)));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          series.img,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '${series.title}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      '${series.description}',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
