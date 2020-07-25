import 'package:flutter/material.dart';
import 'package:flutter_app/video_detail_page.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            theme: ThemeData(
                primaryColor: Colors.white,),
            home: MyHomePage(),
        );
    }
}

class MyHomePage extends StatelessWidget {

    final items = List<String>.generate(10000, (i) => "Item $i");

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                leading: Icon(Icons.videocam),
                title: const Text('YouTube'),
                actions: <Widget>[
                    SizedBox(
                        width: 44,
                        child: FlatButton(
                            child: Icon(Icons.search),
                            onPressed: () {
                                //TODO
                            },
                        ),
                    ),
                    SizedBox(
                        width: 44,
                        child: FlatButton(
                            child: Icon(Icons.more_vert),
                            onPressed: () {
                                //TODO
                            },
                        ),
                    ),
                ],
            ),

            body: Container(
                child: Column(
                    children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                children: <Widget>[
                                    SizedBox(
                                        width: 60,
                                        height: 60,
                                        child: Image.network(
                                            'https://yt3.ggpht.com/a/AATXAJzTTrCl3cb1V2IoZ2h9-me3BXqwolvXElKMT74b=s288-c-k-c0xffffffff-no-rj-mo'),),
                                    const SizedBox(
                                        width: 8,
                                    ),
                                    Column(
                                        children: <Widget>[
                                            const Text(
                                                'KBOYのflutter大学'
                                            ),
                                            FlatButton(
                                                child: Row(
                                                    children: <Widget>[
                                                        Icon(
                                                            Icons.video_call,
                                                            color: Colors.red
                                                        ),
                                                        Text('登録する'),
                                                    ],
                                                ),
                                                onPressed: () {
                                                    //TODO
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => VideoDetailPage()),
                                                    );
                                                },
                                            ),
                                        ],
                                    ),
                                ],
                            ),
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                    return ListTile(
                                        contentPadding: EdgeInsets.all(8),
                                        leading: Image.network(
                                            'https://yt3.ggpht.com/a/AATXAJzTTrCl3cb1V2IoZ2h9-me3BXqwolvXElKMT74b=s288-c-k-c0xffffffff-no-rj-mo'
                                        ),
                                        title: Column(
                                            children: <Widget>[
                                                Text('${items[index]}',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500),

                                                ),
                                            ],
                                        ),
                                    );
                                },
                            ),
                        ),
                    ],
                )
            ),
            // This trailing comma makes auto-formatting nicer for build methods.
        );
    }
}
