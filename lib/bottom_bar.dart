import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25)
          ),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 5,
              width: MediaQuery.of(context).size.width/2-40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.home, color: Color(0xFFEF7532),),
                  Icon(Icons.person_outline, color: Color(0xFF676E79))
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2-40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.search, color: Color(0xFF676E79)),
                  Icon(Icons.shopping_basket, color: Color(0xFF676E79))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}