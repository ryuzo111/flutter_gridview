import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});
  // final String title;

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  int _columnsCount = 2; //dartではプライベート変数は_のみで表記できる
  // finalはすでに宣言された変数を代入すると、finalはコンパイルで評価しないためエラーにはならないが、constではエラーになる
  final ScrollController _scrollController = ScrollController();

//最後に読んだ際に処分する
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        FloatingActionButton(
          onPressed: () {
            if (_columnsCount < 3) {
              setState(() => {_columnsCount++});
            }
          },
          child: Icon(
            Icons.grid_on,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        FloatingActionButton(
          onPressed: () {
            if (_columnsCount > 2) {
              setState(() => {_columnsCount--});
            }
          },
          child: Icon(
            Icons.grid_off,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        FloatingActionButton(
          onPressed: () {
            _scrollController.animateTo(0,
                duration: Duration(milliseconds: 1300), curve: Curves.bounceIn);
          },
          child: Icon(
            Icons.arrow_upward,
            color: Colors.white,
          ),
        ),
      ]),
      body: GridView.builder(
        controller: _scrollController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _columnsCount,
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
