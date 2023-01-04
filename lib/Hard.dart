import 'package:flutter/material.dart';
import 'package:kbc/ModelEasy.dart';

class Hard extends StatefulWidget {
  const Hard({Key? key}) : super(key: key);

  @override
  State<Hard> createState() => _HardState();
}

class _HardState extends State<Hard> {
  List colore = [
    Colors.purpleAccent,
    Colors.blue.shade800,
    Colors.red.shade300,
    Colors.yellow.shade600,
    Colors.lightGreenAccent.shade700,
    Colors.lightBlueAccent.shade400,
    Colors.red.shade800,
    Colors.indigo.shade700,
    Colors.blue.shade900,
    Colors.deepOrangeAccent,
  ];
  List answer = [
    "C. Bharathatyarn",
    "C. New Delhi",
    "B. North India",
    "D. Zend Avesta",
    "D. Kathakali",
    "C. Kerala",
    "B. Yakshagana",
    "A. Bankim Chandra Chatterji",
    "A. 1911",
    "B. Jana Gana Mana",
  ];
  List text = [
    Color(0xFFEFFFE8),
    Color(0xFFEFFFE8),
    Color(0xFF000000),
    Color(0xFF000000),
    Color(0xFF000000),
    Color(0xFFFFFFFF),
    Color(0xFF000000),
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
  ];
  List uans = [];
  int i = 0, point = 0;
  @override
  Widget build(BuildContext context) {
    List<easymodel3> data =
    ModalRoute.of(context)!.settings.arguments as List<easymodel3>;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Hard Mode"),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  color: colore[i],
                  alignment: Alignment.center,
                  child: Text(
                    "${data[i].que3}",
                    style: TextStyle(
                        color: text[i],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Expanded(
                    child: Container(
                      height: 416.9,
                      width: double.infinity,
                      color: Color(0xFF000000),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      uans.add(data[i].a3);
                                      if (i != 9) {
                                        if (uans[i] == answer[i]) {
                                          point++;
                                          Navigator.pushNamed(context, 'true',
                                              arguments: point * 10000);
                                        } else {
                                          Navigator.pushNamed(context, 'false');
                                        }
                                      }
                                    });
                                    if (i < 9) {
                                      setState(() {
                                        i++;
                                      });
                                    }
                                    if (i == 9) {
                                      result();
                                    }
                                  },
                                  child: Container(
                                    height: 45,
                                    width: 160,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF1E1F23),
                                        borderRadius: BorderRadius.circular(10)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${data[i].a3}",
                                      style: TextStyle(
                                          color: Color(0xFFA8A8A9), fontSize: 15),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      uans.add(data[i].b3);
                                      if (i != 9) {
                                        if (uans[i] == answer[i]) {
                                          point++;
                                          Navigator.pushNamed(context, 'true',
                                              arguments: point * 10000);
                                        } else {
                                          Navigator.pushNamed(context, 'false');
                                        }
                                      } else {
                                        Navigator.pushNamed(context, 'end');
                                      }
                                    });
                                    if (i < 9) {
                                      setState(() {
                                        i++;
                                      });
                                    }
                                    if (i == 9) {
                                      result();
                                    }
                                  },
                                  child: Container(
                                    height: 45,
                                    width: 160,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF1E1F23),
                                        borderRadius: BorderRadius.circular(10)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${data[i].b3}",
                                      style: TextStyle(
                                          color: Color(0xFFA8A8A9), fontSize: 15),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 121),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        uans.add(data[i].c3);
                                        if (i != 9) {
                                          if (uans[i] == answer[i]) {
                                            point++;
                                            Navigator.pushNamed(context, 'true',
                                                arguments: point * 10000);
                                          } else {
                                            Navigator.pushNamed(context, 'false');
                                          }
                                        } else {
                                          Navigator.pushNamed(context, 'end');
                                        }
                                      });
                                      if (i < 9) {
                                        setState(() {
                                          i++;
                                        });
                                      }
                                      if (i == 9) {
                                        result();
                                      }
                                    },
                                    child: Container(
                                      height: 45,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF1E1F23),
                                          borderRadius: BorderRadius.circular(10)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${data[i].c3}",
                                        style: TextStyle(
                                            color: Color(0xFFA8A8A9), fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        uans.add(data[i].d3);
                                        if (i != 9) {
                                          if (uans[i] == answer[i]) {
                                            point++;
                                            Navigator.pushNamed(context, 'true',
                                                arguments: point * 10000);
                                          } else {
                                            Navigator.pushNamed(context, 'false');
                                          }
                                        } else {
                                          Navigator.pushNamed(context, 'end');
                                        }
                                      });
                                      if (i < 9) {
                                        setState(() {
                                          i++;
                                        });
                                      }
                                      if (i == 9) {
                                        result();
                                      }
                                    },
                                    child: Container(
                                      height: 45,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF1E1F23),
                                          borderRadius: BorderRadius.circular(10)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${data[i].d3}",
                                        style: TextStyle(
                                            color: Color(0xFFA8A8A9), fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
  void result() {
    for (int i = 0; i < answer.length; i++) {
      if (uans[i] == answer[i]) {
        point++;
      }
    }
  }
}
