import 'package:bakecake_app/screens/constructor/cake.constructor.screen.dart';
import 'package:bakecake_app/screens/login/login.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/login/registration.page.dart';

void main() {
  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white
      ),
      home: LoginPage(),
      routes: {
        '/constructor': (context) => CakeConstructorPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegistrationPage(),
      },
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final wordPair = WordPair.random();
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Welcome to Flutter',
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Colors.white,
//           foregroundColor: Colors.black,
//         ),
//       ),
//       home: const CakeConstructorPage(),
//       // routes: {
//       //   '/home' : (context) => RandomWords(),
//       //   '/suggestions' : (context) => Suggestions()
//       // },
//     );
//   }
// }
//
// class RandomWords extends StatefulWidget {
//   const RandomWords({Key? key}) : super(key: key);
//
//   @override
//   _RandomWordsState createState() => _RandomWordsState();
// }
//
// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18.0);
//   final _saved = <WordPair>[];
//
//   void _pushSaved() {
//     // Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
//     //   final tiles = _saved.map((pair) {
//     //     return ListTile(
//     //       title: Text(
//     //         pair.asPascalCase,
//     //         style: _biggerFont,
//     //       ),
//     //     );
//     //   });
//     //   final divided = tiles.isNotEmpty
//     //       ? ListTile.divideTiles(context: context, tiles: tiles).toList()
//     //       : <Widget>[];
//     //   return Scaffold(
//     //     appBar: AppBar(
//     //       title: const Text('Saved Suggestions'),
//     //     ),
//     //     body: ListView(children: divided),
//     //   );
//     // }));
//     Navigator.pushNamed(context, '/suggestions');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // final wordPair = WordPair.random();
//     // return Text(wordPair.asPascalCase);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Startup Name Generator'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.list),
//             onPressed: _pushSaved,
//             tooltip: 'Saved Suggestions',
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemBuilder: (BuildContext context, int i) {
//           if (i.isOdd) {
//             return const Divider(
//               color: Colors.amber,
//             );
//           }
//
//           final index = i ~/ 2;
//           if (index >= _suggestions.length) {
//             _suggestions.addAll(generateWordPairs().take(10));
//             // _suggestionsLength = _suggestions.length;
//           }
//
//           return _buildRow(_suggestions[index]);
//         },
//       ),
//     );
//   }
//
//   Widget _buildRow(WordPair pair) {
//     final alreadySaved = _saved.contains(pair);
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//         semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
//       ),
//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }
// }
//
// class Suggestions extends StatelessWidget {
//   final _suggestions = <WordPair>[];
//   late TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
//   late List<WordPair> _saved = <WordPair>[];
//
//   Suggestions({Key? key, List<WordPair>? saved, TextStyle? biggerFont}) : super(key: key) {
//     if (saved != null) _saved = saved;
//     if (biggerFont !=null) _biggerFont = biggerFont;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final tiles = _saved.map((pair) {
//       return ListTile(
//         title: Text(
//           pair.asPascalCase,
//           style: _biggerFont,
//         ),
//       );
//     });
//     final divided = tiles.isNotEmpty
//         ? ListTile.divideTiles(context: context, tiles: tiles).toList()
//         : <Widget>[];
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Saved Suggestions Route'),
//       ),
//       body: ListView(children: divided),
//     );
//   }
// }
//
