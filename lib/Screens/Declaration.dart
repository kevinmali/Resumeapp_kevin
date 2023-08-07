import 'package:flutter/material.dart';
import 'package:untitled/utils/global_page.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Globals.bgColor,
        elevation: 0,
        toolbarHeight: 140,
        centerTitle: true,
        title: Text(
          "Declaration",
          style: TextStyle(
              color: Globals.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Globals.textColor,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Declaration",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                    ),
                  ),
                  Switch(
                    onChanged: (val) {
                      setState(() {
                        Globals.botton = val;
                      });
                    },
                    value: Globals.botton,
                  ),
                ],
              ),
            ),
            (Globals.botton == true)
                ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "🎯",
                          style: TextStyle(fontSize: 60),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          onSaved: (val) {
                            Globals.dis = val;
                          },
                          decoration: const InputDecoration(
                              hintText: "Descripation",
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          thickness: 3,
                        ),
                        Text("Date"),

                        TextFormField(
                          keyboardType: TextInputType.datetime,
                          onSaved: (val) {
                            Globals.date = val;
                          },
                          decoration: const InputDecoration(
                            hintText: "DD/MM/YYYY",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Text("Place(Interview\nVenue/city)"),
                        TextFormField(
                          onSaved: (val) {
                            Globals.city = val;
                          },
                          decoration: const InputDecoration(
                              hintText: "Eg.Surat",
                              border: OutlineInputBorder()),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}