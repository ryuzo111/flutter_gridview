import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);
  // final String title;

  @override
  State<SliverAppBarPage> createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  int _columnsCount = 2; //dartではプライベート変数は_のみで表記できる
  // finalはすでに宣言された変数を代入すると、finalはコンパイルで評価しないためエラーにはならないが、constではエラーになる
  double _textScale = 1.0;
  bool _isLarge = false;
  final ScrollController _scrollController = ScrollController();

//最後に読んだ際に処分する
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _toggleLargeFont(bool isLarge) {
    isLarge ? _textScale = 1.2 : _textScale = 1.0;
    setState(() => {_isLarge = isLarge});
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaleFactor: _textScale,
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blueAccent.withOpacity(0.3),
              floating: true, //AppBarに向かってスクロールすると同時にAppBarを表示するかどうかを設定
              pinned: true, // スクロールした時にAPpppBarを表示させるかどうかの設定
              snap: false, //AppBarに向かってスクロールするとAppbarを完全に展開するかどうか
              expandedHeight: 180, // appbarが展開されたときの高さ
              toolbarHeight: 60, //タイトルや画像などAppBarの内容に当たる部分
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
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('文字を大きく'),
                                  Switch(
                                      value: _isLarge,
                                      onChanged: _toggleLargeFont),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Text('Sept. 29 2020',
                                    style: GoogleFonts.lato()),
                              ),
                              IconButton(
                                icon:
                                    Icon(Icons.share, color: Colors.blueAccent),
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
      ),
    );
  }
}
