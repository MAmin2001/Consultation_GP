import 'package:consultation_gp/modules/login/login.dart';
import 'package:consultation_gp/modules/mentor_reg/mentor_reg.dart';
import 'package:flutter/material.dart';


class ConsultRegister extends StatelessWidget {
  ConsultRegister({Key? key}) : super(key: key);

  late String _firstname,_lastname,_email,_password,_cpassword;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Padding(
        padding:  EdgeInsets.all(17.0),
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    "Sign up as a mentee"),
                Row(
                  children: [
                    Text(
                        style: TextStyle(fontSize: 17),
                        "Are you looking to become a"),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MentorReg(),
                          ));
                        },
                        child: Text(
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                            "mentor instead")),
                    Text(style: TextStyle(fontSize: 17), "?"),
                  ],
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
                Center(
                  child: ElevatedButton(onPressed: () {
                    if (_formkey.currentState!.validate()){
                      _formkey.currentState!.save();
                    }
                  }, child: Text("Sign Up")),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ConsultLogin(),
                            ));
                          },
                          child: Text("Sign In"))
                    ],
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