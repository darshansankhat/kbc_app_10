import 'package:flutter/material.dart';

class Next_scrren extends StatefulWidget {
  const Next_scrren({Key? key}) : super(key: key);

  @override
  State<Next_scrren> createState() => _Next_scrrenState();
}

class _Next_scrrenState extends State<Next_scrren> {

  int a=1000;

  @override
  Widget build(BuildContext context) {

    List temp=ModalRoute.of(context)!.settings.arguments as List;

    int i=temp[1];
    int amount=temp[0];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //img
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset("assets/image/Next_scrren_image/img.png",height: 200,width: 200,),
            ),
            //text
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("Youer Ans is Correct",style: TextStyle(fontSize: 25,color: Colors.deepPurpleAccent),),
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
                 if(i<=6)
                   {
                     Navigator.pop(context, "Home");
                   }
                 else
                   {
                     Navigator.pushNamed(context, "over",arguments: amount);
                   }
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
                      Text("Next",style: TextStyle(fontSize: 30,color: Colors.white),),
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
