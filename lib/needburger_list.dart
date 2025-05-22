import 'package:flutter/material.dart';

class NeedburgerList extends StatefulWidget {
  const NeedburgerList({super.key});

  @override
  State<NeedburgerList> createState() => _NeedburgerListState();
}

class _NeedburgerListState extends State<NeedburgerList> {
  @override
  Widget build(BuildContext context) {
    var items = 10;
    Widget baconImage = Container(
      height: 160,
      child: Image.asset("images/beff.png"),
    );
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 240,
        child: ListView.builder(
          itemCount: items,
          scrollDirection: Axis.horizontal,
          itemBuilder:
              (context, index) => Stack(
                children: [
                  Container(
                    height: 240,
                    width: 200,
                    margin: EdgeInsets.only(
                      left: 20,
                      right: index == items ? 20 : 0,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        color: Color(0xFFF5D97E),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(5),
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(25),
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                "Burger",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    "350 Tk",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Icon(Icons.add)
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: -10,
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: baconImage,
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
    ;
  }
}
