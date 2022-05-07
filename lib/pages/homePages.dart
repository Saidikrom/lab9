// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'qualtyPages.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  List<dynamic> datas = [];
  List<dynamic> end = [];
  bool colors = false;
  String? overal;
  String? results;
  var n=0;
  var a=0;
  var b=1;
  var c=2;
  var index = 0;
 void count(){
   setState(() {
     index++;
   });
 }
 void remove(){
   setState(() {
     index =0;
   });
 }
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final data = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Track My Sleep Quality'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    MaterialButton(
                      color: colors ? Colors.grey : Colors.lightGreen,
                      onPressed: () {
                        setState(() {
                          datas.add(
                              // ignore: unnecessary_string_interpolations
                              '${DateFormat.EEEE().format(DateTime.now())}');
                          datas.add(
                              // ignore: unnecessary_string_interpolations
                              "${DateFormat('MMM M y').format(DateTime.now())}");
                          datas
                              // ignore: unnecessary_string_interpolations
                          .add("${DateFormat.Hm().format(DateTime.now())}");
                          datas.add(DateFormat.H().format(DateTime.now()));
                          datas.add(DateFormat.m().format(DateTime.now()));
                          datas.add(DateFormat.s().format(DateTime.now()));
                          colors = true;
                        });
                        count();
                       
                      },
                      child: const Text(
                        'START',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      color: colors ? Colors.lightGreen : Colors.grey,
                      onPressed: () async {
                         
                          // ignore: unused_local_variable
                          String? result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) {
                                  return const QualityPages()
                                } ));
                            results = result;
                                
                       
                        setState(() {
                          end.add(
                              // ignore: unnecessary_string_interpolations
                              '${DateFormat.EEEE().format(DateTime.now())}');
                          end.add(
                              // ignore: unnecessary_string_interpolations
                              "${DateFormat('MMM M y').format(DateTime.now())}");
                          // ignore: unnecessary_string_interpolations
                          end.add("${DateFormat.Hm().format(DateTime.now())}");
                          end.add(DateFormat.H().format(DateTime.now()));
                          end.add(DateFormat.m().format(DateTime.now()));
                          end.add(DateFormat.s().format(DateTime.now()));
                          colors = false;
                          overal =
                              " ${int.parse(end[3]) - int.parse(datas[3])} : ${int.parse(end[4]) - int.parse(datas[4])} : ${int.parse(end[5]) - int.parse(datas[5])}";
                        });
                      },
                      child: const Text(
                        'STOP',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 150),
              child: Column(
                children: const [
                  Text(
                    'HERE IS YOUR SLEEP DATA',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 17),
                  ),
                ],
              ),
            ),

            Expanded(child: 
            ListView.builder(
              itemCount:index,
              itemBuilder: (context, index){
              return 
               Padding(
              padding: const EdgeInsets.only(top: 30, right: 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 110),
                      child: datas.isEmpty
                          ? null
                          : Text(
                              'START: ${datas[a]}, ${datas[b]} Time: ${datas[c]},'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 105),
                    child: end.isEmpty
                        ? null
                        : Text('END: ${end[a]}, ${end[b]} Time: ${end[c]},'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 235),
                    child: end.isEmpty ? null : Text('QUALITY: $results'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 95),
                    child: end.isEmpty
                        ? null
                        : Text('HOURS : MINUTES : SECONDS - $overal'),
                  ),
                ],
              ),
            ); 
            },
            ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SizedBox(
                 height: 50,
                 child: Padding(
                   padding: const EdgeInsets.only(bottom: 5),
                   child: MaterialButton(
                      color:  Colors.lightGreen,
                     onPressed: (){
                       remove();
                     }, child: const Text('remove'),),
                 ))
             ],
           )
          ],
        ),
      ),
    );
  }
}
