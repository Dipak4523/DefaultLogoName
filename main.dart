import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List<String> _listName=new List();

  @override
  void initState() {
    super.initState();
    _listName.add("Sundar Pichai");
    _listName.add("Ashok Vemuri");
    _listName.add("Shantanu Narayen");
    _listName.add("Satya  Nadella");
    _listName.add(" Sanjay Mehrotra ");
    _listName.add("Sanjay  Jha");
    _listName.add("Rajeev Suri ");
    _listName.add("George Kurian ");
    _listName.add("Francisco D’Souza");
    _listName.add("Dinesh Paliwal");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: _listView()
    );
  }

  Widget _listView(){
    return ListView.builder(itemBuilder: (buildContext,index)=>
      _dataName(_listName[index]),
      itemCount: _listName.length,);
  }

  Widget _dataName(String str){
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.green,
            child: Text(getFirstLatter(str)[0][0].toUpperCase()+getFirstLatter(str)[1][0].toUpperCase()),
          ),
          Padding(padding: EdgeInsets.only(left: 5.0,right: 4.0),),
          Expanded(child: Text(str,textScaleFactor: 1.2,))
        ],
      ),
    );
  }

  List<String> getFirstLatter(String st){
    return st.split(' ').where((s)=> !s.isEmpty).toList();
  }
}
