import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: size.height/5,
                decoration: BoxDecoration(
                  color: Color(0xFFF5D97E),
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(45)),
                  boxShadow: [BoxShadow(blurRadius:2)]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.white70,radius: 35,
                          child: CircleAvatar(
                             backgroundImage: AssetImage("images/needburger.png"),
                             radius: 30,
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hazrat Ali",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black26
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text(
                                    "Gold Member",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                            "150 \$ CAN",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Positioned(
                        bottom:0,
                        child: Container(
                          height: 50,
                          width: size.width,
                          child: Card(
                            elevation: 3,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "What does your belly want to eat?",
                                suffixIcon: Icon(Icons.search),
                                contentPadding: EdgeInsets.only(left: 25)
                              ),
                            ),
                          ),
                        ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
