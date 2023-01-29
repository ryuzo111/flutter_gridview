import 'package:flutter/material.dart';
import 'dart:math' as math;

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);
  // final String title;

  @override
  State<SliverAppBarPage> createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blueAccent.withOpacity(0.3),
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 180,
            toolbarHeight: 60,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('記事カテゴリー'),
              background: Container(
                width: double.infinity,
                child: Image.network(
                  'https://1.bp.blogspot.com/-ZOg0qAG4ewU/Xub_uw6q0DI/AAAAAAABZio/MshyuVBpHUgaOKJtL47LmVkCf5Vge6MQQCNcBGAsYHQ/s1600/pose_pien_uruuru_woman.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Text('Sept. 29 2020'),
                            ),
                            IconButton(
                              icon: Icon(Icons.share, color: Colors.blueAccent),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Text('記事タイトル'),
                        Divider(height: 30, thickness: 1),
                        SizedBox(height: 8),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://1.bp.blogspot.com/-ZOg0qAG4ewU/Xub_uw6q0DI/AAAAAAABZio/MshyuVBpHUgaOKJtL47LmVkCf5Vge6MQQCNcBGAsYHQ/s1600/pose_pien_uruuru_woman.png'),
                              radius: 26,
                              backgroundColor: Colors.grey[200],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '山田太郎',
                                ),
                                Text(
                                  'ITジャーナリスト',
                                ),
                              ],
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Icon(Icons.favorite_border,
                                color: Colors.blueAccent),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '350',
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            Icon(Icons.comment, color: Colors.blueAccent),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '25',
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        SizedBox(height: 10.0),
                        Text('aaaaaaaaaaaaaaaaaaaaaaaaa'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
