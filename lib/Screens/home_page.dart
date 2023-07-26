import 'package:flutter/material.dart';
import 'package:untitled/utils/global_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Globals.bgColor,
        centerTitle: true,
        title: Text(
          "Resume Builder",
          style: TextStyle(color: Globals.textColor),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("options");
        },
        backgroundColor: Globals.bgColor,
        child: Icon(
          Icons.add,
          color: Globals.textColor,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 400,
              color: Globals.bgColor,
              child: Center(
                  child: Text(
                "RESUMES",
                style: TextStyle(fontSize: 20, color: Globals.textColor),
              )),
            ),
          ),
          Expanded(
            flex: 12,
            child: Column(
              children: [
                SizedBox(height: 50),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "lib/utils/Assets/bulidicons/open-cardboard-box.png"))),
                    ),
                    const Text(
                      "No Resumes + Create new resume.",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
