import 'package:flutter/material.dart';
import 'package:untitled/utils/buildlist.dart';
import 'package:untitled/utils/global_page.dart';

class Buildoption extends StatefulWidget {
  const Buildoption({super.key});

  @override
  State<Buildoption> createState() => _BuildoptionState();
}

class _BuildoptionState extends State<Buildoption> {
  int initialIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Globals.bgColor,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Resume WorkSpace",
                        style:
                            TextStyle(fontSize: 20, color: Globals.textColor),
                      ),
                    ],
                  ),
                  Text(
                    "Build options",
                    style: TextStyle(fontSize: 20, color: Globals.textColor),
                  ),
                ],
              )),
            ),
          ),
          Expanded(
            flex: 12,
            child: SingleChildScrollView(
              child: Column(
                  children: Myoptions.map(
                (e) => Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    e["icon"],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              e["name"],
                              style: const TextStyle(fontSize: 18),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(e["rote_name"]);
                              },
                              icon: const Icon(
                                Icons.navigate_next,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ).toList()),
            ),
          )
        ],
      ),
    );
  }
}
