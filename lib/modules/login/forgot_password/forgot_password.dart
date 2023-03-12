import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();
  late String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset your password"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
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
                    "Reset your password")),
                SizedBox(height: 20,),
                Center(child: Text(
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    "A password reset link for all of your accounts on this e-mail (mentor & mentee) is going to be sent to you!")),
                SizedBox(height: 20,),
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
                    labelText: "E-mail",
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
                SizedBox(height: 15,),

                Center(child: ElevatedButton(

                    onPressed: (){
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        print(' Email: $_email ');
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