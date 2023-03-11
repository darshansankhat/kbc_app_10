import 'package:flutter/material.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {
  int i = 0;
  int a = 0, b = 0, c = 0, d = 0;
  int amount = 1000;

  List question = [
    "What is name of longest river of the india ?",
    "What is name of national animal of the india ?",
    "What is name of capital of the america ?",
    "Who invented c language ?",
    "Who is father of the our nation?",
    "which currency of India",
    "Who Was King Of Dwarika Nagri",
  ];

  List optA = [
    "Ganga",
    "Tiger",
    "Washington",
    "Bjarne Strostrup",
    "Mahatma Gandhi",
    "Dollar",
    "Kans",
  ];

  List optB = [
    "Brahmputra",
    "Lion",
    "New York",
    "Denis richie",
    "Sardar Pate",
    "Rupees",
    "bhim",
  ];

  List optC = [
    "Sindhu",
    "Lepord",
    "Dalas",
    "Mark Zuck",
    "Javahar Naheru",
    "rubal",
    "Arjun"
  ];

  List optD = [
    "Narmada",
    "Cow",
    "Shikago",
    "Steve Jobs",
    "Bhagatsinh",
    "won",
    "Krishna",
  ];

  List qans = [
    "A",
    "A",
    "A",
    "B",
    "A",
    "B",
    "D",
  ];

  List uans = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text(
          "Question",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Icon(Icons.perm_identity, size: 30),
        ],
      ),
      body: Column(
        children: [
          //line
          Line(Colors.amber),
          Line(Colors.lightBlueAccent),
          //Question
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 250,
              width: double.infinity,
              color: Colors.black12,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    height: 210,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    color: Colors.deepPurpleAccent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Question
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "QUESTION",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.deepPurpleAccent),
                            ),
                          ),
                        ),
                        //1/10
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "${i}/7",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.deepPurpleAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 50),
                    child: Text(
                      "${question[i]}",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
              onTap: () {
                perform("A");
              },
              child: ans("A", optA[i])),
          SizedBox(height: 20),
          InkWell(
              onTap: () {
                perform("B");
              },
              child: ans("B", optB[i])),
          SizedBox(height: 20),
          InkWell(
              onTap: () {
                perform("C");
              },
              child: ans("C", optC[i])),
          SizedBox(height: 20),
          InkWell(
              onTap: () {
                perform("D");
              },
              child: ans("D", optD[i])),
        ],
      ),
    );
  }

  Widget Line(Color c1) {
    return Container(
      height: 10,
      width: double.infinity,
      color: c1,
    );
  }

  Widget ans(String num, String option) {
    return Container(
      height: 70,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(500),
        color: Colors.deepPurpleAccent,
        border: Border.all(width: 3, color: Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.pinkAccent,
                ],
              ),
            ),
            child: Center(
                child: Text(
              "$num",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "$option",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void perform(String opt) {
    setState(() {
      if (i <= question.length) {
        uans.add("$opt");
      }
      if (uans[i] == qans[i]) {
        List temp=[amount,uans.length];
        Navigator.pushNamed(context, "Next", arguments: temp);
        amount = amount * 2;
      } else {
        Navigator.pushNamed(context, "lose");
      }
      if (i < question.length - 1) {
        i++;
      }
      print("$uans $i $amount");
    });
  }
}
