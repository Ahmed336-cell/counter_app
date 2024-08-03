import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int counterA=0;
  int counterB=0;
  @override
  Widget build(BuildContext context) {

    return   MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("BasketBall Counter App"),
              backgroundColor: Colors.orange,
              centerTitle: true,
            ),

          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child:  Column(
                        children: [
                          const Text("Team A" ,
                          style: TextStyle(fontSize: 40),
                          ),
                           Text("$counterA" , style: const TextStyle(fontSize: 80),),
                          ElevatedButton(onPressed: (){
                            setState(() {
                              counterA++;
                            });
                          },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                            ), child: const Text("+1 point",
                          style: TextStyle(fontSize: 17),
                          ),
                          ),


                          ElevatedButton(onPressed: (){
                            setState(() {
                              counterA+=2;
                            });
                          },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                            ), child: const Text("+2 point",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            setState(() {
                              counterA+=3;
                            });
                          },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                            ), child: const Text("+3 point",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            setState(() {
                              counterA=0;
                            });
                          },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                            ), child: const Text("reset",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 500,
                      child: const VerticalDivider(
                        thickness: 2,
                        indent: 20,
                        endIndent: 10,
                      ),
                    ),
                    Container(
                      child:  Column(
                        children: [
                         const Text(
                           "Team B",
                           style: TextStyle(fontSize: 40),
                         ),
                           Text("$counterB" , style: const TextStyle(fontSize: 80),),
                          ElevatedButton(onPressed: (){
                            setState(() {
                              counterB++;
                            });
                          },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                            ), child: const Text("+1 point",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),


                          ElevatedButton(onPressed: (){
                            setState(() {
                              counterB+=2;
                            });
                          },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                            ), child: const Text("+2 point",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            setState(() {
                              counterB+=3;
                            });
                          },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                            ), child: const Text("+3 point",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),

                          ElevatedButton(onPressed: (){
                            setState(() {
                              counterB=0;
                            });
                          },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                            ), child: const Text("reset",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),

        )
    );
  }
}

