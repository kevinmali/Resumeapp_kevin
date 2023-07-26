import 'package:flutter/material.dart';
import 'package:untitled/utils/global_page.dart';

class Carrier extends StatefulWidget {
  const Carrier({Key? key}) : super(key: key);

  @override
  State<Carrier> createState() => _CarrierState();
}

class _CarrierState extends State<Carrier> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffededed),
      appBar: AppBar(
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
          "Carrier Objective",
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
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.all(15),
                    height: h * .35,
                    width: w * .9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Globals.textColor,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Career Objective",
                            style: Globals.fontstyle,
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.careercontroller.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter Descripation";
                              }
                            },
                            controller: Globals.careercontroller,
                            onChanged: (val) {
                              setState(() {
                                Globals.career = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                              hintText: "Descripation",
                              hintStyle: Globals.texstyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(14),
                    height: h * .20,
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
                            "Current Designation (Experienced Candidate",
                            style: Globals.fontstyle,
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.currentdescontroller.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter Descripation";
                              }
                            },
                            controller: Globals.currentdescontroller,
                            onChanged: (val) {
                              setState(() {
                                Globals.currentdes = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                              hintText: "Software Engineer",
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
