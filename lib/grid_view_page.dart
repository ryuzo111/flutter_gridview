import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});
  // final String title;

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  int _columnsCount = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.grid_on,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.grid_off,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.arrow_upward,
            color: Colors.white,
          ),
        ),
      ]),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => Container(
          color: Colors.black,
          child: Center(
            child: Text(
              index.toString(),
              style: TextStyle(
                fontSize: 42,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
