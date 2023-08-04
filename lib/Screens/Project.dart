import 'package:flutter/material.dart';
import 'package:untitled/utils/global_page.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Projects",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Globals.background,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 65),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Project Title",
                  style: Globals.fontstyle,
                ),
                TextFormField(
                  onSaved: (val) {
                    Globals.titl = val;
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Resumne Builder App",
                    hintStyle: Globals.texstyle,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Project Title",
                  style: Globals.fontstyle,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: Globals.c,
                        onChanged: (val) {
                          setState(() {
                            Globals.c = val;
                          });
                        }),
                    const Text("C Programming"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: Globals.cp,
                        onChanged: (val) {
                          setState(() {
                            Globals.cp = val;
                          });
                        }),
                    const Text("C++"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: Globals.flutter,
                        onChanged: (val) {
                          setState(() {
                            Globals.flutter = val!;
                          });
                        }),
                    const Text("Flutter"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Roles",
                  style: Globals.fontstyle,
                ),
                TextFormField(
                  onSaved: (val) {
                    Globals.roles = val!;
                  },
                  decoration: InputDecoration(
                      hintText: "Organize team members,code",
                      hintStyle: Globals.texstyle,
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Technologies",
                  style: Globals.fontstyle,
                ),
                TextFormField(
                  onSaved: (val) {
                    Globals.tecono = val;
                  },
                  decoration: InputDecoration(
                      hintText: "5 - programmers",
                      hintStyle: Globals.texstyle,
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Project Descripation",
                  style: Globals.fontstyle,
                ),
                TextFormField(
                  onSaved: (val) {
                    Globals.des = val;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Project Descripation",
                      hintStyle: Globals.texstyle,
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
