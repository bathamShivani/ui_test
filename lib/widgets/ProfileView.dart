import 'package:flutter/material.dart';
import 'package:ui_test/utility/responsive.dart';

class Profileview extends StatelessWidget {
  const Profileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: isLandscape(context)
          ? MediaQuery.of(context).size.height * 0.5
          : MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Profile-1.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpeg'),
                maxRadius: 50,
                backgroundColor: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.loop,
                    size: 16,
                    color: Colors.white,
                  ),
                  Text('Upgrade Now',
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                ],
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Tahmid Sen',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.king_bed,
                    size: 18,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.emoji_emotions_outlined,
                    size: 18,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.cast_for_education,
                    size: 18,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 18,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 18,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'info@gmail.com',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.edit, size: 16, color: Colors.white),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
