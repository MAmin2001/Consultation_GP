import 'package:consultation_gp/modules/login/login_screen/login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();
  late String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot your password "),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formkey,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text(
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    "Forgot your password ?")),
                SizedBox(height: 20,),
                Center(child: Text(
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    "Enter your email to get a password reset link")),
                SizedBox(height: 15,),
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

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "enter your email",
                    hintStyle: TextStyle(
                      color: Colors.grey,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ConsultLogin(),));
                    }, child: Text(
                      "Remember your password?",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0,
                          color: Colors.blue
                      ),
                    )
                    )
                  ],
                ),
                SizedBox(height: 12,),

                Center(child: ElevatedButton(

                    onPressed: (){

                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        print(' Email: $_email ');
                        Fluttertoast.showToast(
                          msg: "please check your Email inbox",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.white,
                          fontSize: 16.0,);

                      }

                    }, child: Text
                  (
                    "Confirm"
                ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}