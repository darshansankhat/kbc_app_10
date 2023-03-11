import 'package:flutter/material.dart';

class Lose_scrren extends StatefulWidget {
  const Lose_scrren({Key? key}) : super(key: key);

  @override
  State<Lose_scrren> createState() => _Lose_scrrenState();
}

class _Lose_scrrenState extends State<Lose_scrren> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //img
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset("assets/image/lose_scrren/img.png",height: 200,width: 200,),
            ),
            //text
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("Youer Ans is inCorrect",style: TextStyle(fontSize: 25,color: Colors.deepPurpleAccent),),
            ),
            //won
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("You Lose",style: TextStyle(fontSize: 25,color: Colors.red),),
            ),
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
