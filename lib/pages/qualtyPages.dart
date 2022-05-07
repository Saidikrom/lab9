// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab9/pages/homePages.dart';

class QualityPages extends StatefulWidget {
  const QualityPages({Key? key}) : super(key: key);

  @override
  State<QualityPages> createState() => _QualityPagesState();
}

class _QualityPagesState extends State<QualityPages> {
  List arg = [
    'very bad',
    'bad',
    'tired',
    'very good',
    'not bad',
    'good',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track My Sleep Quality'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: const [
                Text(
                  "How was Your Sleep ?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop<String>(context, arg[0]);
                  },
                  child: SvgPicture.asset(
                    'assets/bi_emoji-angry-fill.svg',
                    height: 50,
                    color: Colors.lightGreen,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pop<String>(context, arg[1]);
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/bi_emoji-dizzy-fill.svg',
                    height: 50,
                    color: Colors.lightGreen,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pop<String>(context, arg[2]);
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/bi_emoji-frown-fill.svg',
                    height: 50,
                    color: Colors.lightGreen,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pop<String>(context, arg[3]);
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/bi_emoji-laughing-fill.svg',
                    height: 50,
                    color: Colors.lightGreen,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pop<String>(context, arg[4]);
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/bi_emoji-neutral-fill.svg',
                    height: 50,
                    color: Colors.lightGreen,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pop<String>(context, arg[5]);
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/bi_emoji-smile-fill.svg',
                    height: 50,
                    color: Colors.lightGreen,
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
