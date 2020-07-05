import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollTile extends StatefulWidget {
  static List<Tile> tileList;
  @override
  State<StatefulWidget> createState() {
    return _ScrollTileState();
  }
}

class _ScrollTileState extends  State<ScrollTile>{

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
//        const SliverAppBar(
//          pinned: true,
//          expandedHeight: 10.0,
//          flexibleSpace: FlexibleSpaceBar(
//            title: Text('Tiles'),
//          ),
//          actions: [
//            //TODO: Possible button here to add instead of floater
////            IconButton(
////              icon: const Icon(Icons.add_circle),
////              tooltip: 'Add new entry',
//////              onPressed: () { /* ... */ },
////            )
//          ],
//        ),
        SliverPadding(
            padding: EdgeInsets.all(4.0),
          sliver:  SliverFixedExtentList(
            itemExtent: 420.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                            color: Colors.black,
                            width: 8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),//TODO see if there is a more accepted way to do padding
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.verified_user, color: Colors.white),
                              SizedBox(width: 4.0),
                              Flexible(
                                  child: Text("User's caption of the following photo. This is my favorite bread because it is good")
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Image(image: NetworkImage('https://www.seriouseats.com/2010/05/20200330-basic-white-breadloaf-daniel-gritzer-10-1-2.jpg')),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Vote"),
                              IconButton(
                                icon: Icon(Icons.comment, color: Colors.white),
                                tooltip: 'Add comment',
                              ),
                              IconButton(
                                icon: Icon(Icons.share, color: Colors.white),
                                tooltip: 'Share the goods',
                              ),
                            ],
                          )
                        ],
                      )
                  )
                );
              },
            ),
          ),
        )
      ],
    );
  }

}

class Tile{
  String title;
  Image image;
  int number;
}