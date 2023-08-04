import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Globals {
  static Color textColor = Color(0xffffffff);
  static Color bgColor = Color(0xff0475ff);
  static Color hinttext = Color(0xffb0b0b0);
  static Color background = Color(0xffededed);

  static TextStyle fontstyle = TextStyle(
    fontSize: 23,
    color: bgColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle texstyle = TextStyle(
    fontSize: 18,
    color: Colors.grey,
    fontWeight: FontWeight.normal,
  );
  static int initialIndex = 0;

  static String name = "";
  static String email = "";
  static String number = "";
  static String address1 = "";
  static String address2 = "";
  static String address3 = "";
  static String courses = "";
  static String school = "";
  static String result = "";
  static String pass = "";
  static String kname = "";
  static String designations = "";
  static String institutes = "";
  static bool gujarati = false;
  static bool hindi = false;
  static bool english = false;
  static bool c_program = false;
  static bool c_plus = false;
  static bool flutter = false;
  static String dob = "";
  static String nationality = "";
  static String career = "";
  static String currentdes = "";
  static String ktitle = "";
  static String roles = "";
  static String technologi = "";
  static String kdescription = "";
  static String skills1 = "";
  static String skills2 = "";
  static String imagepath = "";

  static bool botton = false;
  static String? dis;
  static String? date;
  static String? city;

  static String? titl;
  static String? tecono;
  static String? des;
  static bool? c = false;
  static bool? cp = false;

  static TextEditingController namecontroller = TextEditingController();
  static TextEditingController emailcontroller = TextEditingController();
  static TextEditingController numbercontroller = TextEditingController();
  static TextEditingController address1controller = TextEditingController();
  static TextEditingController address2controller = TextEditingController();
  static TextEditingController address3controller = TextEditingController();
  static TextEditingController coursescontroller = TextEditingController();
  static TextEditingController schoolcontroller = TextEditingController();
  static TextEditingController resultcontroller = TextEditingController();
  static TextEditingController passcontroller = TextEditingController();
  static TextEditingController knamecontroller = TextEditingController();
  static TextEditingController designationscontroller = TextEditingController();
  static TextEditingController institutescontroller = TextEditingController();
  static TextEditingController dobcontroller = TextEditingController();
  static TextEditingController nationalitycontroller = TextEditingController();
  static TextEditingController careercontroller = TextEditingController();
  static TextEditingController currentdescontroller = TextEditingController();
  static TextEditingController ktitlecontroller = TextEditingController();
  static TextEditingController rolescontroller = TextEditingController();
  static TextEditingController technologicontroller = TextEditingController();
  static TextEditingController kdescriptioncontroller = TextEditingController();
  static TextEditingController skills1c = TextEditingController();
  static TextEditingController skills2c = TextEditingController();

  static bool off1 = true;

  static ImagePicker picker = ImagePicker();
}
