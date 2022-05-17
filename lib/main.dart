import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    List<String> listName = ["Budi", "Elma", "Tooru", "Kanna", "Rima", "Lita"];

    Widget listView(){
      return ListView(
        children: [
          CircleAvatar(
            maxRadius: 50,
            backgroundColor: Colors.black,
            child: Icon(Icons.person, color: Colors.white, size: 50),
          ),
          Center(
            child: Text(
              'Sooraj S Nair',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      );
    }

    Widget listViewBuilder(){
      return ListView.builder(
        itemCount: listName.length,
        itemBuilder: (BuildContext context, int index){
          int number = index + 1;
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              left: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$number. ${listName[index]}"
                ),
                Divider(
                  color: Colors.black,
                )
              ],
            ),
          );
        }
      );
    }

    Widget listViewSeparated(){
      return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => Divider(
          color: Colors.black,
        ),
        itemCount: listName.length,
        itemBuilder: (BuildContext context, int index){
          int number = index + 1;
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(
                left: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "$number. ${listName[index]}"
                ),
              ],
            ),
          );
        }
      );
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        margin: EdgeInsets.only(
          top: 25
        ),
        child: Scaffold(
          body: listViewSeparated(),
        ),
      ),
    );
  }
}
