import 'package:consultation_gp/modules/login/forgot_password/forgot_password.dart';
import 'package:consultation_gp/modules/mentee/mentee_reg/mentee_reg.dart';
import 'package:consultation_gp/modules/mentor/profile_setup/profile_setup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ConsultLogin extends StatefulWidget {

  @override
  State<ConsultLogin> createState() => _ConsultLoginState();
}

class _ConsultLoginState extends State<ConsultLogin> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;
  bool isOb = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("Login"),
        //leading: Icon(Icons.login),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(17.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 40.0,
                          ),
                          "LOGIN"),
                    ),
                   /* Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.grey,
                        ),
                        "E-mail"),*/
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
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
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter an email';
                        }
                        if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                          return 'Please enter a valid Email';
                        }
                        return null;
                      },
                      onSaved: (value) => _email = value!,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    /*Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.grey,
                        ),
                        "Password"),*/
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                      onSaved: (value) => _password = value!,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        labelText: "Password",
                        hintText: "enter your Password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.password,
                        ),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              isOb = !isOb;
                            });
                          } ,
                          icon: isOb ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                        ),
                      ),
                      obscureText: isOb,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              print(' Email: $_email, Password: $_password');
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileSetup(),));
                            }
                          },
                          child: Text("Login")),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ConsultRegister(),
                            ));
                          },
                          child: Text("Sign Up")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Forgot your email/password"),
                        TextButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassword(),));
                        }, child: Text("click here"))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}