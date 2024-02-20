import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget FriendPost(
    {proPic, proName, dateAndLocation, comments, like, post, caption}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
    child: Row(
      children: <Widget>[
        SizedBox(
          width: 411.0,
          height: 550.0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 411.0,
                  height: 50.0,
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //Mametaka ilay sary pdp an'olona
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 5.0, right: 5.0),
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      border: Border.all(
                                        color: Colors.brown,
                                        style: BorderStyle.solid,
                                      ),
                                      //Pdp @ilay publication an'olona
                                      image: DecorationImage(
                                          image: AssetImage(proPic),
                                          fit: BoxFit.cover
                                          // AssetImage(proPic)
                                          )),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              //Mametaka ny anaran'ilay sekoly
                              SizedBox(
                                width: 260.0,
                                height: 20.0,
                                child: Text(
                                  proName,
                                  style: const TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              //Andro sy ora ni-publiena ilay sary
                              SizedBox(
                                width: 260.0,
                                height: 30.0,
                                child: Text(
                                  dateAndLocation,
                                  style: const TextStyle(fontSize: 12.0),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //Ilay menu kely etsy @sisiny iny
                          SizedBox(
                            width: 90.0,
                            height: 50.0,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 411.0,
                  height: 400.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                        width: 415.0,
                        // color: Colors.blue,
                        child: Text(caption),
                      ),
                      Container(
                        width: 405.0,
                        height: 380.0,
                        color: Colors.black12,
                        child: Image(
                          image: AssetImage(post),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 411.0,
                  height: 30.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          //Ny fitambaran reaction
                          SizedBox(
                            width: 80.0,
                            height: 30.0,
                            // color: Colors.blue,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Icon(
                                  Icons.thumb_up,
                                  size: 17.0,
                                  color: Colors.blue,
                                ),
                                const Icon(
                                  Icons.favorite,
                                  size: 17.0,
                                  color: Colors.red,
                                ),
                                Text(like)
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(
                              width: 150.0,
                              height: 30.0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(comments),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //Reaction
                SizedBox(
                  width: 411.0,
                  height: 30.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      //Reaction j'aime
                      Container(
                        width: 137.0,
                        height: 30.0,
                        color: Colors.white,
                        child: Row(children: <Widget>[
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.thumb_up,
                                size: 20.0,
                                color: Colors.blue,
                              )),
                          const Text('Like')
                        ]),
                      ),
                      //Commentaire
                      SizedBox(
                        width: 137.0,
                        height: 30.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.comment,
                                  size: 20.0,
                                  color: Colors.black54,
                                )),
                            const Text('Commentaire')
                          ],
                        ),
                      ),
                      //Partage
                      SizedBox(
                        width: 137.0,
                        height: 30.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share,
                                  size: 20.0,
                                  color: Colors.black54,
                                )),
                            const Text('Partager')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   width: 411.0,
                //   height: 30.0,
                //   color: Colors.pink,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Container(
                    height: 5.0,
                    width: 411.0,
                    color: Colors.black26,
                  ),
                )
              ]),
        ),
      ],
    ),
  );
}
