// ignore_for_file: avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fgm/widgets/http.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  PostResult? postResult = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 600,
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(postResult != null ? postResult!.id.toString() : "No data"),
            ElevatedButton(
              onPressed: () {
                PostResult.connectToAPI("", "").then(
                  (value) {
                    postResult = value;
                    setState(() {});
                  },
                );
              },
              child: Text("POST"),
            ),
          ],
        ),
      ),
    );
  }
}
