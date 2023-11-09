import 'package:flutter/material.dart';
import 'package:zet_gram/src/ui/profile/detail_profil_screen.dart';
import 'package:zet_gram/src/widgets/search_widgets/search_widget.dart';

class ShowSearchWidget extends StatefulWidget {
  const ShowSearchWidget({super.key});

  @override
  State<ShowSearchWidget> createState() => _ShowSearchWidgetState();
}

class _ShowSearchWidgetState extends State<ShowSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context, delegate: CustomSearchDelegate(),);
          }, icon: Icon(Icons.search))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text('izlash uchun tepadagi icon ga bos'),
          )
        ],
      ),
    );
  }
}
class CustomSearchDelegate extends SearchDelegate{
  List<String> searchItems =[
    'Cristiano Ronaldo',
    'Leo Messi',
    'Shakira',
    'FC Bayern',
    '433',
    'Robert Lewandowski',
    'David Beckham',
    'Georgina',
    'Manuel Neuer',
  ];
  List<String> imgs = [
    "assets/images/cristiano.jpg",
    "assets/images/messi.jpg",
    "assets/images/shakira.jpg",
    "assets/images/fcb.jpg",
    "assets/images/433.jpg",
    "assets/images/lewa.jpg",
    "assets/images/becks.jpg",
    "assets/images/gio.jpg",
    "assets/images/neuer.jpg",
  ];
  List<String> users = [
    "cristiano",
    "leomessi",
    "shakira",
    "fcbayern",
    "433",
    "_rl9",
    "davidbeckham",
    "georginagio",
    "manuelneuer",
  ];
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
          onPressed: (){
            query = '';
          },
          icon: Icon(Icons.clear)
      )
    ];
  }


  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
        onPressed: (){close(context, null);},
        icon: Icon(Icons.arrow_back_ios_new_outlined));
  }


  @override
  Widget buildResults(BuildContext context){
    List<String> matchQuery = [];
    for (var cars in searchItems){
      if(cars.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(cars);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return SearchWidget(img: imgs[index], name: result, username: users[index],onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DetailProfileScreen(profile: imgs[index], name: searchItems[index], username: users[index]);
          }));
        },);
      },
    );
  }


  @override
  Widget buildSuggestions(BuildContext context){
    List<String> matchQuery = [];
    for (var cars in searchItems){
      if(cars.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(cars);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return SearchWidget(img: imgs[index], name: result, username: users[index],onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DetailProfileScreen(profile: imgs[index], name: searchItems[index], username: users[index]);
          }));
        },);
      },
    );
  }
}