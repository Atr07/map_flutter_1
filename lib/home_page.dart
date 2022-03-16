import 'package:flutter/material.dart';
import 'package:map_flutter_1/user_map_log.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map Test"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ListView.builder(
                  itemCount: 15,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTile(
                    title: Text("List $index"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserMap()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}