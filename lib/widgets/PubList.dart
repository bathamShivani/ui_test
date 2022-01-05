import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_test/model/pub_model.dart';

class PubList extends StatelessWidget {
  const PubList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: PubModel.pubmodel.length,
          itemBuilder: (BuildContext context, int index) {
            return AspectRatio(
              aspectRatio: 14 / 9,
              child: InkWell(
                onTap: () {
                  print('tap');
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white, width: 2.0),
                      image: DecorationImage(
                          image: AssetImage(PubModel.pubmodel[index].image),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.pink,
                            offset: Offset(0, 2),
                            blurRadius: 5)
                      ]),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ListTile(
                      leading: Icon(
                        Icons.restaurant,
                        color: Colors.white,
                      ),
                      title: Text(
                        PubModel.pubmodel[index].name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  color: Colors.pink,
                                  offset: Offset(0, 3),
                                  blurRadius: 10)
                            ]),
                      ),
                      subtitle: RatingBarIndicator(
                        rating: PubModel.pubmodel[index].rating,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        itemCount: 5,
                        itemSize: 20.0,
                        direction: Axis.horizontal,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
