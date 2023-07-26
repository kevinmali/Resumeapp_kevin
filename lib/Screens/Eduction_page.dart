import 'package:flutter/material.dart';
import 'package:untitled/utils/global_page.dart';

class Eduction extends StatefulWidget {
  const Eduction({super.key});

  @override
  State<Eduction> createState() => _EductionState();
}

class _EductionState extends State<Eduction> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffededed),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              formKey.currentState!.reset();
              Globals.coursescontroller.clear();
              Globals.schoolcontroller.clear();
              Globals.resultcontroller.clear();
              Globals.passcontroller.clear();
            },
            icon: Icon(
              Icons.refresh,
              color: Globals.textColor,
            ),
          ),
          IconButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Saved Successfully..."),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please Enter Full Details..."),
                  ),
                );
              }
            },
            icon: Icon(
              Icons.check,
              color: Globals.textColor,
            ),
          ),
        ],
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
          "Education",
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
                            "Course/Degree",
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
                              hintText: "B. Tech information Technology",
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
                              hintText: "Bhagavan Mahavir University",
                              hintStyle: Globals.texstyle,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Result",
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
                              hintText: "70% (or) 7.0 CGPA",
                              hintStyle: Globals.texstyle,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Year Of Pass",
                            style: Globals.fontstyle,
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.passcontroller.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter Passing Year";
                              }
                            },
                            controller: Globals.passcontroller,
                            onChanged: (val) {
                              setState(() {
                                Globals.pass = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: "2019",
                              hintStyle: Globals.texstyle,
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
        ),
      ),
    );
  }
}
