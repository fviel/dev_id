import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DevCard(),
  ));
}

/**
 * Stateless widget é estático, num muda valor!!
 */
class DevCard extends StatefulWidget {
  @override
  _DevCardState createState() => _DevCardState();
}


/**
 * Retorna uma isntancia do estado
 */
class _DevCardState extends State<DevCard> {

  int experience = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Developer ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
                radius: 50.0,
              ),
            ),
            Divider(
              height:60.0,
              color:Colors.grey[800],
            ),
            // Image.asset('assets/images/avatar.png'),
            // Image(
            //   image:AssetImage('assets/images/avatar.png'),
            //   height: 100.0,
            //   width: 100.0,
            // ),
            SizedBox(height:10.0),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Fernando Viel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'EXPERIENCE ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$experience',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width:10.0),
                Text(
                  'fernandoviel82@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            experience++;
          });
        },
        elevation: 1.0,
        backgroundColor: Colors.grey[800],
        child: Icon(
          Icons.add,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
