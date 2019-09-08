import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget textoPrincipal(String texto) {
    return Text(
      texto,
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
    );
  }

  Widget componenteUno(String name) {
    return Column(
      children: <Widget>[
        Icon(Icons.bluetooth_audio, color: Color(0xFF3D305C)),
        Text(
          name,
          style: TextStyle(color: Colors.green),
        )
      ],
    );
  }

  Widget componenteDos(String name) {
    return Column(
      children: <Widget>[
        Icon(Icons.audiotrack, color: Colors.black45),
        Text(
          name,
          style: TextStyle(color: Colors.black45),
        )
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        //primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      //home: RandomWords(),
      //home: MyHomePage(title: 'Flutter demo home page'),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My first flutter app Lord Reo',
            ),
          ),
          // body: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: <Widget>[Text('uno'), Text('dos'), Text('Tres')],
          // ),
          // body: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     Container(
          //       width: 200.0,
          //       height: 200.0,
          //       color: Colors.red,
          //       margin: EdgeInsets.only(top: 50.0, left: 35.0),
          //       //child: Text('texto child en container'),
          //       child: Center(
          //         child: Text('texto en un child de center'),
          //       ),
          //     ),
          //     Container(
          //       width: 120.0,
          //       height: 50.0,
          //       color: Colors.blueAccent,
          //       margin: EdgeInsets.only(top: 20.0),
          //       //child: Text('texto child en container'),
          //       child: Center(
          //         child: Text('texto en un child de center'),
          //       ),
          //     ),
          //     Container(
          //       margin: EdgeInsets.only(top: 30),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: <Widget>[
          //           Container(
          //             width: 50,
          //             height: 50,
          //             color: Colors.orange,
          //           ),
          //           Container(
          //             width: 50,
          //             height: 50,
          //             color: Colors.pink,
          //           ),
          //           Container(
          //             width: 50,
          //             height: 50,
          //             color: Colors.yellow,
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // )),
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 40,
                    color: Color(0xFF388E3C),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        textoPrincipal('uno 1'),
                        textoPrincipal('dos 2'),
                        textoPrincipal('tres 3'),
                        textoPrincipal('cuatro 4'),
                        textoPrincipal('cinco 5'),
                      ],
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        componenteUno('UNO'),
                        componenteDos('DOS'),
                        componenteUno('TRES'),
                        componenteDos('CUATRO'),
                        componenteUno('CINCO')
                      ],
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/images/igualdad'),
                  ),
                  Image(
                      image: NetworkImage(
                          'https://www.iconsdb.com/icons/preview/black/free-badge-xxl.png')),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.lime,
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Center(
                      child: Text('texto en chlid de container'),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        // Add the lines from here...
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ), // ... to here.
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        // Add 20 lines from here...
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
