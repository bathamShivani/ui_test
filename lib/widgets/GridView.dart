import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui_test/model/pub_model.dart';
import 'package:ui_test/utility/responsive.dart';

class GridViewCustom extends StatelessWidget {
  const GridViewCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.custom(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: isLandscape(context) ? 3 : 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          pattern: [
            WovenGridTile(
              5 / 7,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
            WovenGridTile(
              1,
              crossAxisRatio: 0.9,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => ImageTile(
                  image: PubModel.pubmodel[index].image,
                  name: PubModel.pubmodel[index].name,
                  rating: PubModel.pubmodel[index].rating,
                  isfood: PubModel.pubmodel[index].isfoodavailable,
                  address: PubModel.pubmodel[index].address,
                ),
            childCount: PubModel.pubmodel.length),
      ),
    );
  }

  ImageTile({image, name, rating, isfood, address}) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
            boxShadow: [
              BoxShadow(
                  color: Colors.pink, offset: Offset(0, 3), blurRadius: 10)
            ],
            border: Border.all(color: Colors.white, width: 1.0)),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: ListTile(
            contentPadding: const EdgeInsets.only(left: 5),
            horizontalTitleGap: 0.0,
            minVerticalPadding: 0.0,
            leading: Icon(
              isfood ? Icons.restaurant : Icons.fastfood,
              color: Colors.white,
            ),
            title: Text(
              '$name\n$address',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Colors.pink,
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ]),
            ),
            subtitle: RatingBarIndicator(
              rating: rating,
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: Colors.white,
              ),
              itemCount: 5,
              itemSize: 20.0,
              direction: Axis.horizontal,
            ),
          ),
        ));
  }
}
