import 'package:flutter/material.dart';

import 'cat_pages/cat_ınfo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),// koyu tema kullanmak için 
      title: "CAT JHSON",
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(title: ""),
    );
  }
}
