
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWhatsappHomePage extends StatefulWidget {
  MyWhatsappHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyWhatsappHomePage createState() => _MyWhatsappHomePage();
}

class _MyWhatsappHomePage extends State<MyWhatsappHomePage> {

  Widget getItemChatList() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('House Lannister - Everis',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18),
              ),
              Text('13:06')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('+55 11 94970-9209:'),
              Text('Hello browww')
            ],
          )
        ],
      ),
    );
  }

  Widget getListItem() {
    return
      Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 50,
                child:CircleAvatar(
                  backgroundImage: NetworkImage('https://quickbirdstudios.com/blog/wp-content/uploads/2018/06/16FB8FD2-6D3E-4EFA-9062-2231CA34F196-550x208.png'),
                ) ,
              ),
            ),
            getItemChatList()
          ],
      );
  }

  Widget ChatListBuilder() {
    return Container(
      alignment: Alignment.center,
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
        ),
        itemBuilder: (context, index) => Container(
          height: 80,
          child: getListItem(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Conversas',),
              Tab(text: 'Status',),
              Tab(text: 'Chamadas',)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ChatListBuilder(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ), floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      ),
    );
  }
}