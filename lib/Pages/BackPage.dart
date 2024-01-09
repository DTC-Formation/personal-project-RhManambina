import 'package:flutter/material.dart';
class BackPage extends StatelessWidget {
  const BackPage({super.key});

  @override
  Widget build(BuildContext context) {
    Text customText(String data) {
      return Text(data);
    }

    var size = MediaQuery.of(context).size; //maka ny taillen'ilay ecran
    //Scaffold(AppBar,body): raha olona dia misy loha sy vatana
    return Scaffold(
        appBar: AppBar(
          title: customText("Hello"),
          backgroundColor: Colors.red,
        ), //header

        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              // Mijery ny position sy misafidy izay hametrahana azy
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //image en ligne
                Image.asset('assets/image.jpg'),

                Container(
                  color: Color.fromRGBO(137, 152, 166, 0.941),
                  child: Center(child: customText('Formation DTC')),
                  margin: EdgeInsets.all(5.0),
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(100),
                ),
                Container(
                  color: Colors.amber,
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(100),
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.amber,
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(100),
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.amber,
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(100),
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ));
  }
}
