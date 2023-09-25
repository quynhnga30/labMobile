

import 'package:flutter/material.dart';

import '../../../../components/Common.dart';

class ListTitleExampleScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(title: 'List Title'),
      drawer: NavigationDrawerComponent(),
      body: Center(
        child: ListView(
          children: const [
            SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.car_rental),
              title: Text('Car',style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 11),),
              trailing: Icon(Icons.more_vert),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.local_taxi_outlined),
              title: Text('Taxi',style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 11),),
              trailing: Icon(Icons.more_vert),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.bus_alert_outlined),
              title: Text('Bus',style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 11),),
              trailing: Icon(Icons.more_vert),
            )
          ],
        ),
      ),
    );
  }

}

