import 'package:flutter/material.dart';

class Uygulamam extends StatefulWidget {
  const Uygulamam({super.key});
  @override
  State<StatefulWidget> createState() {
    return _UygulamamState();
  }
}

class _UygulamamState extends State {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Sayaç Uygulaması"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => sayaciArttir(),
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sayacı arttırmak için tıklayın",
                style: TextStyle(fontSize: 26),
              ),
              Text(_sayac.toString(),
                  style: const TextStyle(fontSize: 26)
              )
            ],
          ),
        ),
      ),
    );
  }
  void sayaciArttir() {
    setState(() {
      _sayac++;
    })
  }
}