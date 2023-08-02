import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/utils/global_page.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  XFile? image;
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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              formKey.currentState!.reset();
              Globals.namecontroller.clear();
              Globals.emailcontroller.clear();
              Globals.numbercontroller.clear();
              Globals.address1controller.clear();
              Globals.address2controller.clear();
              Globals.address3controller.clear();
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
                    content: Text("Please Enter Full Detail..."),
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
        toolbarHeight: 90,
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
          "Resume Workspace",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Globals.bgColor,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Globals.initialIndex = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 15,
                            child: Container(
                              color: Globals.bgColor,
                              child: Center(
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Globals.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: (Globals.initialIndex == 0)
                                  ? Colors.yellow
                                  : Globals.bgColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Globals.initialIndex = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 15,
                            child: Container(
                              color: Globals.bgColor,
                              child: Center(
                                child: Text(
                                  "Photo",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Globals.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: (Globals.initialIndex == 1)
                                  ? Colors.yellow
                                  : Globals.bgColor,
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
          Expanded(
            flex: 12,
            child: IndexedStack(
              index: Globals.initialIndex,
              children: [
                SingleChildScrollView(
                  child: Form(
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: h * .45,
                            width: w * .9,
                            color: Globals.textColor,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Icon(
                                          Icons.person,
                                          size: 35,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: TextFormField(
                                          onFieldSubmitted: (val) {
                                            setState(() {
                                              Globals.namecontroller.text = val;
                                            });
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Name";
                                            }
                                          },
                                          controller: Globals.namecontroller,
                                          onChanged: (val) {
                                            setState(() {
                                              Globals.name = val;
                                            });
                                          },
                                          decoration: InputDecoration(
                                            hintText: "Name",
                                            hintStyle: Globals.texstyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Icon(
                                          Icons.email,
                                          size: 35,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: TextFormField(
                                          onFieldSubmitted: (val) {
                                            setState(() {
                                              Globals.emailcontroller.text =
                                                  val;
                                            });
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Email";
                                            }
                                          },
                                          controller: Globals.emailcontroller,
                                          onChanged: (val) {
                                            setState(() {
                                              Globals.email = val;
                                            });
                                          },
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            hintText: "Email",
                                            hintStyle: Globals.texstyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Icon(
                                          Icons.phone_android,
                                          size: 35,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: TextFormField(
                                          onFieldSubmitted: (val) {
                                            setState(() {
                                              Globals.numbercontroller.text =
                                                  val;
                                            });
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Number";
                                            }
                                          },
                                          controller: Globals.numbercontroller,
                                          onChanged: (val) {
                                            setState(() {
                                              Globals.number = val;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: "Phone",
                                            hintStyle: Globals.texstyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Icon(
                                          Icons.location_on,
                                          size: 35,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: TextFormField(
                                          onFieldSubmitted: (val) {
                                            setState(() {
                                              Globals.address1controller.text =
                                                  val;
                                            });
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Address";
                                            }
                                          },
                                          controller:
                                              Globals.address1controller,
                                          onChanged: (val) {
                                            setState(() {
                                              Globals.address1 = val;
                                            });
                                          },
                                          decoration: InputDecoration(
                                            hintText:
                                                "Address(Street,building)",
                                            hintStyle: Globals.texstyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: TextFormField(
                                          onFieldSubmitted: (val) {
                                            setState(() {
                                              Globals.address2controller.text =
                                                  val;
                                            });
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Address1";
                                            }
                                          },
                                          controller:
                                              Globals.address2controller,
                                          onChanged: (val) {
                                            setState(() {
                                              Globals.address2 = val;
                                            });
                                          },
                                          decoration: InputDecoration(
                                            hintText: "Address2",
                                            hintStyle: Globals.texstyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: TextFormField(
                                          onFieldSubmitted: (val) {
                                            setState(() {
                                              Globals.address3controller.text =
                                                  val;
                                            });
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Address";
                                            }
                                          },
                                          controller:
                                              Globals.address3controller,
                                          onChanged: (val) {
                                            setState(() {
                                              Globals.address3 = val;
                                            });
                                          },
                                          decoration: InputDecoration(
                                            hintText: "Address3",
                                            hintStyle: Globals.texstyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            height: 300,
                            width: 300,
                            color: Colors.white,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 80,
                                  foregroundImage:
                                      // NetworkImage(
                                      //     "https://tse2.mm.bing.net/th?id=OIP.My8OZWBFJ-baT4__ywDvoQHaFj&pid=Api&P=0&h=180"),
                                      FileImage(
                                    File(
                                      "${image?.path}",
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        image = await Globals.picker.pickImage(
                                          source: ImageSource.camera,
                                        );
                                        setState(() {});
                                      },
                                      icon: const Icon(
                                        Icons.camera_alt,
                                        size: 30,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () async {
                                          image =
                                              await Globals.picker.pickImage(
                                            source: ImageSource.gallery,
                                          );
                                          setState(() {
                                            Globals.imagepath = image!.path;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.photo,
                                          size: 30,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
