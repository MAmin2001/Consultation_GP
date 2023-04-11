import 'package:consultation_gp/modules/login/login_screen/login.dart';
import 'package:consultation_gp/modules/mentee/mentee_profile.dart';
import 'package:consultation_gp/modules/mentor/mentor_reg/register_cubit/register_cubit.dart';
import 'package:consultation_gp/modules/mentor/mentor_reg/register_cubit/register_states.dart';
import 'package:consultation_gp/modules/mentor/mentor_reg/register_screen/mentor_reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ConsultRegister extends StatelessWidget {
  ConsultRegister({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();
  var fNameController =TextEditingController();
  var lNameController =TextEditingController();
  var userNameController =TextEditingController();
  var emailController =TextEditingController();
  var pNumController =TextEditingController();
  var passwordController =TextEditingController();
  var cPasswordController =TextEditingController();




  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit,RegisterStates>
        (
        listener: (context,state)
        {
          if(state is RegisterSuccessState)
          {
            if(state.loginModel.success!)
            {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MenteeProfile()));
            }
            else
            {
              Fluttertoast.showToast(
                msg: state.loginModel.message!,
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 10,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 20.0,
              );
            }
          }
        },
        builder: (context,state)
        {
          return Scaffold(

            appBar: AppBar(
              title: Text("Register as client"),
            ),
            body: Padding(
              padding:  EdgeInsets.all(20.0),
              child: Form(
                key: _formkey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /*Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      "Sign up as a mentee"),*/
                      /*Row(
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
                  ),*/
                      SizedBox(height: 25.0,),
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Please enter first name";
                          }
                          return null;
                        },
                        controller: fNameController,
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
                      SizedBox(height: 25.0,),
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Please enter last name";
                          }
                          return null;
                        },
                        controller: lNameController,
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
                      SizedBox(height: 25.0,),
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Please enter Username";
                          }
                          return null;
                        },
                        controller: userNameController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(),
                          labelText: "Username",
                          hintText: "enter your username",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 25.0,),
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
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
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
                      SizedBox(height: 25.0,),
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Please enter phone number";
                          }
                          return null;
                        },
                        controller: pNumController,
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
                      SizedBox(height: 25.0,),
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Please enter a password";
                          }
                          return null;
                        },
                        controller: passwordController,
                        obscureText: RegisterCubit.get(context).isOb,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              RegisterCubit.get(context).obscureRegister();
                            },
                            icon: RegisterCubit.get(context).isOb ? Icon(Icons.visibility_off) : Icon(Icons
                                .visibility),
                          ),
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
                      SizedBox(height: 25.0,),
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return 'Please re-enter password';
                          }
                          if(passwordController.text.trim()!=cPasswordController.text.trim()){
                            return "Password does not match";
                          }
                          return null;
                        },
                        controller: cPasswordController,
                        obscureText: RegisterCubit.get(context).isOb,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              RegisterCubit.get(context).obscureRegister();
                            },
                            icon: RegisterCubit.get(context).isOb ? Icon(Icons.visibility_off) : Icon(Icons
                                .visibility),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(),
                          labelText: "Confirm Password",
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
                          if (_formkey.currentState!.validate())
                          {
                            RegisterCubit.get(context).clientRegister
                              (
                                fName: fNameController.text,
                                lName: lNameController.text,
                                userName: userNameController.text,
                                pNumber: pNumController.text,
                                email: emailController.text,
                                password: passwordController.text,
                                cPassword: cPasswordController.text
                            );

                          }
                        }, child: Text("Sign Up")),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?"),
                            SizedBox(
                              width: 0,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                                    builder: (context) => ConsultLogin(),
                                  ));
                                },
                                child: Text("Sign In",style: TextStyle(fontSize: 15.0),))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      )

    );
  }
}