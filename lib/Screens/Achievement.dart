import 'package:flutter/material.dart';
import 'package:untitled/utils/global_page.dart';

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  List AllTextFields = [];
  List<TextEditingController> AllController = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AllController.add(TextEditingController());
    AllController.add(TextEditingController());

    AllTextFields.add(Row());
    AllTextFields.add(Row());
  }
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Globals.background,
      appBar: AppBar(
        toolbarHeight: 140,
        backgroundColor: Globals.bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Globals.textColor,
          ),
        ),
        title: Text(
          "Achivements",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.7,
                width: w * 0.9,
                // color: Colors.cyan,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Enter Achivements",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                            (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                                () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.transparent,
                          ),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Row getTextFiled({required int i}) {
    return Row(children: [
      Expanded(
        flex: 12,
        child: TextField(
          controller: AllController[i],
          decoration: InputDecoration(
            hintText: "  Exceeded sales 17% avearage ",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: IconButton(
          onPressed: () {
            setState(
                  () {
                AllController.removeAt(i);
                AllTextFields.removeAt(i);
              },
            );
          },
          icon: Icon(
            Icons.delete,
            size: 40,
          ),
        ),
      ),
    ]);
  }
}
