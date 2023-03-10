import 'package:flutter/material.dart';

class MentorReg extends StatefulWidget {
  MentorReg({Key? key}) : super(key: key);

  @override
  State<MentorReg> createState() => _MentorRegState();
}

class _MentorRegState extends State<MentorReg> {
  late String _firstname,_lastname,_email,_phone,_password,_cpassword;
  // var _selectedLocation ;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mentor Register"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
                key: _formkey,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /* Stack(children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        width: 70,
                        height: 70,
                        child: CircleAvatar(
                          child: Icon(Icons.account_circle_rounded),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Upload Image"),
                    )*/
                      ],
                    ),
                  ),
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.grey,
                      ),
                      "First Name: "),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter first name";
                      }
                      return null;
                    },
                    onSaved: (value) => _firstname = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      labelText: "First Name",
                      hintText: "enter your first name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.grey,
                      ),
                      "Last Name: "),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter last name";
                      }
                      return null;
                    },
                    onSaved: (value) => _lastname = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      labelText: "Last Name",
                      hintText: "enter your last name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.grey,
                      ),
                      "E-mail: "),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter an email";
                      }
                      if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                        return 'Please enter a valid Email';
                      }
                      return null;
                    },
                    onSaved: (value) => _email = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      labelText: "E-mail",
                      hintText: "enter your email",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.grey,
                      ),
                      "Phone Number: "),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter phone number";
                      }
                      return null;
                    },
                    onSaved: (value) => _phone = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      labelText: "Phone Number",
                      hintText: "enter your phone number",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.grey,
                      ),
                      "Password: "),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter a password";
                      }
                      return null;
                    },
                    onSaved: (value) => _password = value!,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "enter your password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.grey,
                      ),
                      "Confirm Password: "),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return 'Please re-enter password';
                      }
                      if(_password!=_cpassword){
                        return "Password does not match";
                      }
                      return null;
                    },
                    onSaved: (value) => _cpassword = value!,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      labelText: "confirm Password",
                      hintText: "enter password again",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
/*              Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "Location: "),
              SizedBox(
                height: 5,
              ),*/
/*    DropdownButton(
      hint: Text("Choose your location"),
      isExpanded: true,
      items: ["Egypt", "UAE","USA","SY"].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
      onChanged: (val){
          setState(() {
            _selectedLocation = val;
          });
      },
      value: _selectedLocation,
    ),
      SizedBox(height: 7,),*/
                  Center(
                    child: ElevatedButton(onPressed: () {
                      if (_formkey.currentState!.validate()){
                        _formkey.currentState!.save();
                      }
                    }, child: Text("Sign Up")),
                  ),
                ]),
          ),
        ));
  }
}