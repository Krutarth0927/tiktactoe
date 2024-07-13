import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/game_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final TextEditingController player1Controller = TextEditingController();
  final TextEditingController player2Controller = TextEditingController();


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter Players name',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.all(15),
            child: TextField(
              controller: player1Controller,
              style: TextStyle(color:Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                ),
                hintText: "Player 1 name",hintStyle: TextStyle(color: Colors.black),
              ),
              // validator: (value){
              //   if(value == null || value.isEmpty){
              //     return "please Enter player 1 name";
              //   }
              //   return null;
              // },

            ),
            ),
            Padding(padding: EdgeInsets.all(15),
              child: TextField(
                controller: player2Controller,
                style: TextStyle(color:Colors.black),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "Player 2 name",hintStyle: TextStyle(color: Colors.black),
                ),
                // validator: (value){
                //   if(value == null || value.isEmpty){
                //     return "please Enter player 2 name";
                //   }
                //   return null;
                // },

              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: (){
                if(_formkey.currentState!. validate()) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => GameScreen(
                          player1:player1Controller.text,
                          player2:player2Controller.text,
                      ),
                  ));
                }
              },
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(15)
                ),
                padding: EdgeInsets.symmetric(vertical: 17,horizontal: 20),
                child: Text('Start Game ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
