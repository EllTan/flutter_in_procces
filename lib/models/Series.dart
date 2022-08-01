import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Series with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String img;
  final color;

  Series({
    required this.id,
    required this.title,
    required this.description,
    required this.img,
    this.color});

}

class SeriesDataProvider with ChangeNotifier {
  List<Series> _items = [
    Series(
        id: 's1',
        title: 'Серия 1',
        description: 'Начало конца',
        img: 'assets/images/series1.jpg',
        color: '0xff9e9e9e',
    ),
    Series(
      id: 's2',
      title: 'Серия 2',
      description: 'Четыре знака',
      img: 'assets/images/series2.jpg',
      color: '0xff546e7a',
    ),
    Series(
      id: 's3',
      title: 'Серия 3',
      description: 'Предательская Луна',
      img: 'assets/images/series3.jpg',
      color: '0xff9e9e9e',
    ),
    Series(
      id: 's4',
      title: 'Серия 4',
      description: 'Банкеты, ублюдки и похороны',
      img: 'assets/images/series4.jpg',
      color: '0xff546e7a',
    ),
    Series(
      id: 's5',
      title: 'Серия 5',
      description: 'Сдерживаемые аппетиты',
      img: 'assets/images/series5.jpg',
      color: '0xff9e9e9e',
    ),
    Series(
      id: 's6',
      title: 'Серия 6',
      description: 'Редкие виды',
      img: 'assets/images/series6.jpg',
      color: '0xff546e7a',
    ),
    Series(
      id: 's7',
      title: 'Серия 7',
      description: 'Перед падением',
      img: 'assets/images/series7.jpg',
      color: '0xff9e9e9e',
    ),
    Series(
      id: 's8',
      title: 'Серия 8',
      description: 'Нечто большее',
      img: 'assets/images/series8.jpg',
      color: '0xff546e7a',
    ),
  ];

  UnmodifiableListView<Series> get items => UnmodifiableListView((_items));

  Series getSeriesById(String id) => _items.singleWhere((value) => value.id == id);

}