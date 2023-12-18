import 'package:flutter/material.dart';
import 'package:project1_mobile/Widgets/game_keyboard.dart';
import 'package:project1_mobile/screens/HomePage.dart';
import 'package:project1_mobile/utilis/game_provider.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  WordleGame _game = WordleGame();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WordleGame.game_message = "";
    WordleGame.initGame();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Wordle",
            style:TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.fromLTRB(500, 0, 0, 0)),
           ElevatedButton(
               onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) =>const HomePage()));
               }, child:Text('Play Again',style: TextStyle(color: Colors.green),)),
          SizedBox(
            height: 20.0,

          ),
          GameKeyboard(_game),
        ],
      ),
    );
  }
}

