

import 'package:flutter/material.dart';

class FormLoginScreen extends StatefulWidget{
  const FormLoginScreen({super.key});
  @override
  State<StatefulWidget> createState() => _FormLoginState();

}

class _FormLoginState extends State<FormLoginScreen>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        leading: Text('login'),
        backgroundColor: Colors.blue,
      ),

     body: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter your username',
              labelText: 'Username',
            ),

          ),
          SizedBox(height: 30),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.remove_red_eye),
              hintText: 'Enter your password',
              labelText: 'Password',
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                  child : ElevatedButton(
                    onPressed: (){

                    },
                    child: Text('Submit'),

                  )
              ),

          ),


        ],
      ),
     )
                  );
  }

}