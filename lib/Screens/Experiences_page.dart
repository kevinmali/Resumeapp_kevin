import 'package:flutter/material.dart';
import 'package:untitled/utils/global_page.dart';

class Experiences extends StatefulWidget {
  const Experiences({super.key});

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  String? Status;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
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
          "Experience",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Center(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(40),
                    padding: EdgeInsets.all(20),
                    height: h * .70,
                    width: w * .9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Globals.textColor,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Company Name",
                            style: Globals.fontstyle,
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.coursescontroller.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter Course or Degree";
                              }
                            },
                            controller: Globals.coursescontroller,
                            onChanged: (val) {
                              setState(() {
                                Globals.courses = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: "New Enterprise, San Francisco",
                              hintStyle: Globals.texstyle,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "School/College/Institute",
                            style: Globals.fontstyle,
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.schoolcontroller.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter School";
                              }
                            },
                            controller: Globals.schoolcontroller,
                            onChanged: (val) {
                              setState(() {
                                Globals.school = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: " Quality Test Engineer ",
                              hintStyle: Globals.texstyle,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Roles (optional)",
                            style: Globals.fontstyle,
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.resultcontroller.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter Result";
                              }
                            },
                            controller: Globals.resultcontroller,
                            onChanged: (val) {
                              setState(() {
                                Globals.result = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: "Working with team members to come up with new concepts and product analysis...",
                              hintStyle: Globals.texstyle,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("Employed Status",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Radio(
                                  activeColor: Globals.bgColor,
                                  value: "Employed",
                                  groupValue: Status,
                                  onChanged: (val) {
                                    setState(() {
                                      Status = val;
                                    });
                                  }),
                              Text("Previously Employed",
                                style: TextStyle(color: Colors.blueAccent,fontSize: 10),
                              ),
                              Radio(
                                  activeColor: Globals.bgColor,
                                  value: "Status",
                                  groupValue: Status,
                                  onChanged: (val) {
                                    setState(() {
                                      Status = val;
                                    });
                                  }),
                              Text("Currently Employed",
                                style: TextStyle(color: Colors.blueAccent,fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
