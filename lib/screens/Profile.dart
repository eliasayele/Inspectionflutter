import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShowProfile extends StatefulWidget {
  @override
  _ShowProfileState createState() => _ShowProfileState();
}

class _ShowProfileState extends State<ShowProfile> {
  bool showPassword = false;

  static const TextStyle appbarText = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 22.0,
    color: Color(0xFF2B395B),
  );

  static const TextStyle inspectertxtStyle = TextStyle(
    fontFamily: "Roboto",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    color: Color(0xFF828282),
  );
  static const TextStyle fieldnames = TextStyle(
    fontFamily: "Roboto",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w300,
    fontSize: 12.0,
    color: Color(0xFF828282),
  );
  static const TextStyle placeholderStyle = TextStyle(
    fontFamily: "Roboto",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    color: Color(0xFF828282),
  );

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Profile",
          style: appbarText,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 4,
                            color: Color(0xFFC4C4C4),
                            offset: Offset(0, 0.7))
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            "https://res.cloudinary.com/expert-tracker/image/upload/v1616418103/mechanippic_pthqrp.jpg",
                          ))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Inspector",
                  style: inspectertxtStyle,
                ),
              ),
              Container(width: 145, child: Divider()),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Name',
                  style: fieldnames,
                ),
              ),
              buildTextField("Name", "Abebe Kebede", false),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Email', style: fieldnames),
              ),
              buildTextField("E-mail", "abebekebede@gmail.com", false),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Phone', style: fieldnames),
              ),
              buildTextField("Phone", "091122334455", false),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, top: 5.0),
      child: Container(
        // width: screenwidth * 0.57,
        child: TextField(
          style: TextStyle(fontSize: 14),
          cursorColor: Colors.orangeAccent,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: placeholderStyle,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ),
      ),
      // TextField(
      //   obscureText: isPasswordTextField ? showPassword : false,
      //   decoration: InputDecoration(
      //       enabledBorder: UnderlineInputBorder(
      //         borderSide: BorderSide(color: Colors.grey),
      //       ),
      //       focusedBorder: UnderlineInputBorder(
      //         borderSide: BorderSide(color: Colors.green),
      //       ),
      //       contentPadding: EdgeInsets.only(bottom: 3),
      //       labelText: labelText,
      //       floatingLabelBehavior: FloatingLabelBehavior.always,
      //       hintText: placeholder,
      //       hintStyle: TextStyle(
      //         fontSize: 16,
      //         color: Colors.black,
      //       )),
      //
      //
      //
      // ),
    );
  }
}
