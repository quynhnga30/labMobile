
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AppBarComponent extends StatelessWidget implements PreferredSizeWidget{
  late String? title;
   AppBarComponent({super.key,  this.title});

  @override
  Widget build(BuildContext context){
    return AppBar(
      title: Text('list title'),
      //leading: const Icon(Icons.menu),
      backgroundColor: Colors.blue,

    );

  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);

}

class NavigationDrawerComponent extends StatelessWidget{
  const NavigationDrawerComponent({super.key});

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Column(
        children: [
          buildHeader(context),
          buildMenuItem(context),
        ],
      ),
    );
  }
  Widget buildHeader(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );

  }
  Widget buildMenuItem(BuildContext context){
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.home),
          title: Text('Home'),
          onTap: (){
            Navigator.pushNamed(context, '/homes');
          },
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: Text('Favourite'),
          onTap: (){
            Navigator.pushNamed(context, '/favourites');
          },
        )
      ],
    );
  }

}