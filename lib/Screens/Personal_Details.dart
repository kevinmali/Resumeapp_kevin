import 'package:flutter/material.dart';
import 'package:untitled/utils/global_page.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  String? married;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
              Globals.dobcontroller.clear();
              Globals.nationalitycontroller.clear();
            },
            icon: Icon(
              Icons.refresh,
              color: Globals.textColor,
            ),
          ),
        ],
        toolbarHeight: 120,
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
          "Personal Details",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(40),
                  height: h * .72,
                  width: w * .9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Globals.textColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "DOB",
                        style: Globals.fontstyle,
                      ),
                      TextFormField(
                        onFieldSubmitted: (val) {
                          setState(() {
                            Globals.dobcontroller.text = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "DD/MM/YYYY";
                          }
                        },
                        controller: Globals.dobcontroller,
                        onChanged: (val) {
                          setState(() {
                            Globals.dob = val;
                          });
                        },
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                          hintText: "DD/MM/YYYY",
                          hintStyle: Globals.texstyle,
                        ),
                      ),
                      Text(
                        "Marital Status",
                        style: Globals.fontstyle,
                      ),
                      Row(
                        children: [
                          Radio(
                              activeColor: Globals.bgColor,
                              value: "Single",
                              groupValue: married,
                              onChanged: (val) {
                                setState(() {
                                  married = val;
                                });
                              }),
                          Text(
                            "Singal",
                            style: Globals.texstyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              activeColor: Globals.bgColor,
                              value: "Married",
                              groupValue: married,
                              onChanged: (val) {
                                setState(() {
                                  married = val;
                                });
                              }),
                          Text(
                            "Married",
                            style: Globals.texstyle,
                          )
                        ],
                      ),
                      Text(
                        "Languages Known",
                        style: Globals.fontstyle,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Globals.bgColor,
                              value: Globals.english,
                              onChanged: (val) {
                                setState(() {
                                  Globals.english = val!;
                                });
                              }),
                          Text(
                            "English",
                            style: Globals.texstyle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Globals.bgColor,
                              value: Globals.hindi,
                              onChanged: (val) {
                                setState(() {
                                  Globals.hindi = val!;
                                });
                              }),
                          Text(
                            "Hindi",
                            style: Globals.texstyle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Globals.bgColor,
                              value: Globals.gujarati,
                              onChanged: (val) {
                                setState(() {
                                  Globals.gujarati = val!;
                                });
                              }),
                          Text(
                            "Gujarati",
                            style: Globals.texstyle,
                          )
                        ],
                      ),
                      Text(
                        "Nationality",
                        style: Globals.fontstyle,
                      ),
                      TextFormField(
                        onFieldSubmitted: (val) {
                          setState(() {
                            Globals.nationalitycontroller.text = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Passing Year";
                          }
                        },
                        controller: Globals.nationalitycontroller,
                        onChanged: (val) {
                          setState(() {
                            Globals.nationality = val;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Indian",
                          hintStyle: Globals.texstyle,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
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
                                content: Text("Please Enter Full Detail..."),
                              ),
                            );
                          }
                        },
                        child: Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 110,
                            color: Globals.bgColor,
                            child: Text(
                              "SAVE",
                              style: TextStyle(
                                fontSize: 22,
                                color: Globals.textColor,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
