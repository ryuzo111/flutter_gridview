import 'package:flutter/material.dart';
import 'dart:math' as math;

class ResponsiveDesignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(
        title: Text("様々なデバイスに対応する"),
      ),
      body: const _ResponsiveDesignPage(),
    );
  }
}

class _ResponsiveDesignPage extends StatelessWidget {
  const _ResponsiveDesignPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait = height > width; // ランドスケープの判定
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 650,
        ),
        child: Column(
          children: <Widget>[
            // const SizedBox(
            //   height: 60,
            // ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "flutter is best",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.85,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // const SizedBox(
            //   height: 60,
            // ),
            Spacer(),
            FlutterLogo(
              size: height * 0.3,
            ),
            // const SizedBox(
            //   height: 60,
            // ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "fast development painge",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.85,
                ),
              ),
            ),
            // const SizedBox(
            //   height: 60,
            // ),
            Spacer(),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 650,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                  primary: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'get started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 60,
            // ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
