import 'package:flutter/material.dart';

class Game_over extends StatefulWidget {
  const Game_over({Key? key}) : super(key: key);

  @override
  State<Game_over> createState() => _Game_overState();
}

class _Game_overState extends State<Game_over> {
  @override
  Widget build(BuildContext context) {

    int amount=ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //img
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset("assets/image/lose_scrren/over.png",height: 200,width: 200,),
            ),
            //text
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("Game Is Over",style: TextStyle(fontSize: 25,color: Colors.deepPurpleAccent),),
            ),
            //won
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("You Won",style: TextStyle(fontSize: 25,color: Colors.red),),
            ),
            Text("$amount",style: TextStyle(fontSize: 25,color: Colors.red),),
            //Next
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: InkWell(onTap: () {
                setState(() {

                    Navigator.pushNamed(context, "/");
                });
              },
                child: Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepPurpleAccent
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Restart",style: TextStyle(fontSize: 30,color: Colors.white),),
                      Icon(Icons.skip_next_outlined,size: 35,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
