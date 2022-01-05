import 'package:flutter/material.dart';

class CarnView extends StatelessWidget {
  const CarnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 150,
      width: double.infinity,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.lightBlue,
                Colors.indigoAccent,
                Colors.indigo,
              ]),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2), color: Colors.black12, blurRadius: 10)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Your Clans',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      color: Colors.grey, offset: Offset(0, 3), blurRadius: 10)
                ]),
          ),
          Row(
            children: [
              Icon(
                Icons.group,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Favourite Clan- XYZ Clan',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 10)
                    ]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Text(
              'More Clan',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Colors.grey,
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
