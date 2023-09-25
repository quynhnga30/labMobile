import 'package:flutter/material.dart';

class StateFullExample extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _StateFullExampleState();

}

class _StateFullExampleState extends State<StateFullExample>{
  late int counter;
  _StateFullExampleState(){
    counter = 0;
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child:
              Text(counter.toString())
          ),

          Row(
            children: [
              IconButton(
                  onPressed:(){
                    setState(() {
                      counter++;
                    });
                  },
                  icon: Icon(
                   Icons.add
                  )
              ),
              IconButton(
                  icon: Icon(
                      Icons.remove),
                  onPressed: (){
                    setState(() {
                      counter--;
                    });
    },

              )


            ],
          )
        ],
      )
    );
  }
}