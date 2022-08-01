import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/models/Series.dart';
import 'package:learn_flutter/pages/home_page.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:provider/provider.dart';

void main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());

}
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SeriesDataProvider>(
          create: (context) => SeriesDataProvider(),
        )
      ],
      child: MaterialApp(
        title: 'The Witcher',
        theme: ThemeData(
          backgroundColor: Colors.black87,
         textTheme: GoogleFonts.macondoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: HomePage(),
      ),
    );
  }

}
