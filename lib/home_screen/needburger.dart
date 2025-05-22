import 'package:flutter/material.dart';
import 'package:needburger/categories.dart';
import 'package:needburger/header.dart';
import 'package:needburger/needburger_list.dart';

class Needburger extends StatefulWidget {
  const Needburger({super.key});

  @override
  State<Needburger> createState() => _NeedburgerState();
}

class _NeedburgerState extends State<Needburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Center(child: Text("NeedBurger")),
            backgroundColor: Color(0xFFF5D97E),
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
            ],
          ),
          Header(),
          Categories(),
          NeedburgerList(),
          NeedburgerList(),
          NeedburgerList(),
        ],
      ),

      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        shape: CircleBorder(),
        child: Icon(Icons.home,color: Colors.white,),
        backgroundColor: Colors.black54
      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Color(0xFFF5D97E),
          child: Row(
            children: [
              Spacer(),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.add_alert),
              ),
              Spacer(),
              Spacer(),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.turned_in)
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
