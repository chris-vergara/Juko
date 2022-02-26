import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Juko'),
        leading: Icon(Icons.menu),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: 'My Account'),
        BottomNavigationBarItem(
            icon: Icon(Icons.queue_music), label: 'Current Jam'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ]),
      body: ListView(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 375,
                color: Colors.orangeAccent,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 15, 20),
                    child: Text(
                      "Hear the \nMusic \nYou Want.",
                      style: TextStyle(
                          fontSize: 52,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () => print('pressed'),
                          child: Text(
                            'Start a Jam',
                            style: TextStyle(color: Colors.black87),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                            ),
                            onPressed: () => print('pressed'),
                            child: Text(
                              'Join a Jam',
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
                  child: Text(
                    'Current Jam Sesh',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.network(
                            'https://m.media-amazon.com/images/I/71m-8XlvccL._SS500_.jpg',
                          ),
                          title: Text('Michael Jackson'),
                          subtitle: Text('P.Y.T'),
                        ),
                        FractionallySizedBox(
                          widthFactor: .8,
                          child: LinearProgressIndicator(
                            value: .618,
                          ),
                        ),
                        Wrap(
                          spacing: 15,
                          children: const [
                            Chip(label: Text('Justin')),
                            Chip(label: Text('Kelly')),
                            Chip(label: Text('Sean')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
