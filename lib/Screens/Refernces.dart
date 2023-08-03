import 'package:flutter/material.dart';
import 'package:untitled/utils/global_page.dart';

class Refernces extends StatefulWidget {
  const Refernces({Key? key}) : super(key: key);

  @override
  State<Refernces> createState() => _ReferncesState();
}

class _ReferncesState extends State<Refernces> {
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
              Globals.knamecontroller.clear();
              Globals.designationscontroller.clear();
              Globals.institutescontroller.clear();
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
                    content: Text("please Enter Full Detail..."),
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
          "References",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 24,
            fontWeight: FontWeight.w500,
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
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(30),
                  padding: EdgeInsets.all(20),
                  height: h * .60,
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
                          "Reference Name",
                          style: Globals.fontstyle,
                        ),
                        TextFormField(
                          onFieldSubmitted: (val) {
                            setState(() {
                              Globals.knamecontroller.text = val;
                            });
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "please Enter Reference";
                            }
                          },
                          controller: Globals.knamecontroller,
                          onChanged: (val) {
                            setState(() {
                              Globals.kname = val;
                            });
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: "Suresh Shah",
                            hintStyle: Globals.texstyle,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Designation",
                          style: Globals.fontstyle,
                        ),
                        TextFormField(
                          onFieldSubmitted: (val) {
                            setState(() {
                              Globals.designationscontroller.text = val;
                            });
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "please Enter Designation";
                            }
                          },
                          controller: Globals.designationscontroller,
                          onChanged: (val) {
                            setState(() {
                              Globals.designations = val;
                            });
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: "Marketing Manager,ID-342332",
                            hintStyle: Globals.texstyle,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Organization/Institute",
                          style: Globals.fontstyle,
                        ),
                        TextFormField(
                          onFieldSubmitted: (val) {
                            setState(() {
                              Globals.institutescontroller.text = val;
                            });
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "please Enter Institute";
                            }
                          },
                          controller: Globals.institutescontroller,
                          onChanged: (val) {
                            setState(() {
                              Globals.institutes = val;
                            });
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: "Green Energy Pvt. Ltd.",
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
    );
  }
}
