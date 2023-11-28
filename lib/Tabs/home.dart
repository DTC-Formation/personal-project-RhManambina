import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
        Container(
          width: 360.0,
          height: 50.0,
          // color: Colors.blue,
          child: Row(children: <Widget>[
            Column(
              children: <Widget>[
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_pin,
                      size: 20.0,
                    ))
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Quoi de neuf ?                                 ",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
        const Divider(
          color: Colors.black,
        ),
        Row(
          children: <Widget>[
            Container(
              width: 396.0,
              height: 40.0,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: 132.0,
                        height: 35.0,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.videocam,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text("Live"),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 132.0,
                        height: 35.0,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.image,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text("Photo"),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 132.0,
                        height: 35.0,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.abc_sharp,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text("Check In"),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        //2nd layer close
        //3rd layer open

        Row(
          children: <Widget>[
            Container(
              width: 410.0,
              height: 6.0,
              color: Colors.black38,
            )
          ],
        ),
        //3rd Layer close

        // 4th layer open (story)
        Container(
          width: double.infinity,
          height: 170.0,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Mystory(myStory: 'assets/image1.jpg'),
                FriendStory(
                    friendStory: 'assets/image2.jpg',
                    proName: 'Manambina',
                    proPic: 'assets/image2.jpg'),
                FriendStory(
                    friendStory: 'assets/image3.jpg',
                    proName: 'Fetra',
                    proPic: 'assets/image3.jpg'),
                FriendStory(
                    friendStory: 'assets/image4.jpg',
                    proName: 'Tojo',
                    proPic: 'assets/image4.jpg'),
                FriendStory(
                    friendStory: 'assets/image5.jpg',
                    proName: 'Fanojo',
                    proPic: 'assets/image5.jpg'),
                FriendStory(
                    friendStory: 'assets/image1.jpg',
                    proName: 'Mana',
                    proPic: 'assets/image1.jpg')
              ],
            ),
          ),
        ),

        //5th layer open
        Row(
          children: <Widget>[
            Container(
              width: 410.0,
              height: 6.0,
              color: Colors.black38,
            )
          ],
        ),
        //5th layer close

        //Poste layer open
        //Ato no fenoina ny friendPOst
        FriendPost(
            proPic: 'assets/image5.jpg',
            proName: 'Manambina Raharisoa',
            dateAndLocation: 'yesterday at 12:00 AM - Madagascar',
            comments: 'Commentaire 400',
            like: '1K',
            post: 'assets/image2.jpg',
            caption: 'Maison'),
        FriendPost(
            proPic: 'assets/image4.jpg',
            proName: 'Fanojo Raharisoa',
            dateAndLocation: '8h',
            comments: 'Commentaire 300',
            like: '3K',
            post: 'assets/image1.jpg',
            caption: 'At home'),
        FriendPost(
            proPic: 'assets/image2.jpg',
            proName: 'Tojo Raharisoa',
            dateAndLocation: '2h',
            comments: 'Commentaire 10',
            like: '2K',
            post: 'assets/image3.jpg',
            caption: 'Balade'),
        //Poste layer close
      ],
    ));
  }
}

//MyStory
Widget Mystory({myStory}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
    child: Container(
      width: 125.0,
      height: double.infinity,
      color: Colors.black12,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage(myStory),
            fit: BoxFit.cover,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle,
                  color: Colors.white,
                  size: 40.0,
                ),
              )
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Add to story',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    ),
  );
}

//MyFriend
//MyStory
Widget FriendStory({friendStory, proName, proPic}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
    child: Container(
      width: 125.0,
      height: double.infinity,
      color: Colors.black12,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //Image ngeza be @ilay story
          Image(
            image: AssetImage(friendStory),
            fit: BoxFit.cover,
          ),
          //Image bory2 eo @ilay story
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 40.0,
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                            image: AssetImage(proPic), fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                proName,
                style: const TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    ),
  );
}

//Post Layer
Widget FriendPost(
    {proPic, proName, dateAndLocation, comments, like, post, caption}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
    child: Row(
      children: <Widget>[
        Container(
          width: 411.0,
          height: 550.0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
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
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      border: Border.all(
                                        color: Colors.brown,
                                        style: BorderStyle.solid,
                                      ),
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
                              //Mametaka ny anaran'ilay olona
                              Container(
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
                              Container(
                                width: 260.0,
                                height: 30.0,
                                child: Text(
                                  dateAndLocation,
                                  style: TextStyle(fontSize: 12.0),
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
                          Container(
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
                Container(
                  width: 411.0,
                  height: 400.0,
                  child: Column(
                    children: <Widget>[
                      Container(
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
                Container(
                  width: 411.0,
                  height: 30.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          //Ny fitambaran reaction
                          Container(
                            width: 80.0,
                            height: 30.0,
                            // color: Colors.blue,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.thumb_up,
                                  size: 17.0,
                                  color: Colors.blue,
                                ),
                                Icon(
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
                            Container(
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
                Container(
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
                      Container(
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
                      Container(
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
