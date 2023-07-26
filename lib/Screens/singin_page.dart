import 'package:flutter/material.dart';
import 'package:untitled/utils/global_page.dart';

class Singin extends StatefulWidget {
  const Singin({super.key});

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  int initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 600,
            width: 350,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 300,
                  width: 350,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://miro.medium.com/max/1200/1*bvUmlISPa0AXrg9_imQuKw.gif",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Enter Email",
                        hintStyle: Globals.texstyle,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: Globals.off1,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              Globals.off1 = !Globals.off1;
                            });
                          },
                          icon: (Globals.off1)
                              ? Text(
                                  "Show",
                                  style: Globals.texstyle,
                                )
                              : Text(
                                  "Hide",
                                  style: Globals.texstyle,
                                ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Enter Password",
                        hintStyle: Globals.texstyle,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'home');
                  },
                  child: Container(
                    height: 50,
                    width: 260,
                    color: Globals.bgColor,
                    alignment: Alignment.center,
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Globals.textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// body: Center(
//   child: Container(
//     height: 200,
//     width: 300,
//     child: Column(
//       children: [
//         TextFormField(
//           decoration: InputDecoration(
//             hintText: " Email id ",
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         TextFormField(
//           decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               hintText: " Password ",
//               suffixIcon: const Icon(Icons.remove_red_eye_sharp)),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         GestureDetector(
//           onTap: () {
//             Navigator.pushReplacementNamed(context, 'home');
//           },
//           child: Container(
//             height: 40,
//             width: 150,
//             color: Colors.blue,
//             child: const Text("Sing in"),
//             alignment: Alignment.center,
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
