import './screen/quran_detail.dart';
import './screen/quran_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './model/quran_ayat_model.dart';
import './model/quran_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: QuranData(),
        ),
        ChangeNotifierProvider.value(
          value: QuranAyat(),
        ),
      ],
      child: MaterialApp(
        title: 'Fikri',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: QuranList(),
        routes: {
          '/detail': (ctx) => QuranDetail(),
        },
      ),
    );
  }
}
