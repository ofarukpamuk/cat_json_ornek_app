import 'package:flutter/material.dart';

// ignore: camel_case_types
class AnaSayfa extends StatefulWidget {
  final String title;
  const AnaSayfa({super.key, required this.title});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.builder(// child yok 
        
        itemCount: 0,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cat_Detail()),
              );
            }),
          child: const Card(
            child: Padding(padding: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("breed name"),
            subtitle: Text("breed description"),
            ),
            ),
          ),
          );
        },

      ),
    );
  }
}
