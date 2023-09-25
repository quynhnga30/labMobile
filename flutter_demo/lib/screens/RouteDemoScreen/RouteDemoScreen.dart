


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomesScreen extends StatelessWidget{
  const HomesScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: TextButton( // = flatbutton
          style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20, color: Colors.white)
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/favourites');
          },
          child: Text('Go to next favourites screen'),
        ),
      ),
    );
  }
}

class FavouriteScreen extends StatelessWidget{
  const FavouriteScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
      ),
      body: Center(
        child: TextButton( // = flatbutton
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20, color: Colors.white)
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/news');
          },
          child: Text('Go to news screen'),
        ),
      ),
    );
  }
}



class NewsScreen extends StatelessWidget{
  const NewsScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: Center(
        child: TextButton( // = flatbutton
          style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20, color: Colors.white)
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/homes');
          },
          child: Text('Comeback home'),
        ),
      ),
    );
  }
}