import 'package:consultation_gp/modules/login/forgot_password/forgot_password.dart';
import 'package:consultation_gp/modules/login/login_cubit/login_cubit.dart';
import 'package:consultation_gp/modules/login/login_cubit/login_states.dart';
import 'package:consultation_gp/modules/mentee/mentee_profile.dart';
import 'package:consultation_gp/modules/mentee/mentee_reg/mentee_reg.dart';
import 'package:consultation_gp/modules/mentor/mentor_reg/mentor_reg.dart';
import 'package:consultation_gp/modules/mentor/profile_setup/profile_setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sliding_switch/sliding_switch.dart';


class ConsultLogin extends StatelessWidget {


  final _formKey = GlobalKey<FormState>();
  late String _email, _password;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state){},
        builder: (context,state)
        {
          return Scaffold(
            appBar: AppBar(
              //title: Text("Login"),
              //leading: Icon(Icons.login),
            ),
            body: Form(
              key: _formKey,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 40,
                                ),
                                "Login"),
                          ),
                          SizedBox(height: 5.0,),
                          Center(
                            child: Text(
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.grey[500]
                                ),
                                "login as"),
                          ),
                          SizedBox(height: 20,),
                          Center(
                            child: SlidingSwitch(
                              value: LoginCubit.get(context).isMentor,
                              onChanged: (bool value) {
                                LoginCubit.get(context).toggleLogin();
                              },
                              onSwipe: () {},
                              onTap: () {},
                              onDoubleTap: () {},
                              textOff: 'Mentor',
                              textOn: 'Client',
                              colorOff: Colors.blue,
                              colorOn: Colors.blue,
                              animationDuration: const Duration(milliseconds: 400),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                            controller: emailController,
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
                              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                  .hasMatch(value)) {
                                return 'Please enter a valid Email';
                              }
                              return null;
                            },
                            onSaved: (value) => _email = value!,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: passwordController,
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
                                onPressed: () {
                                  LoginCubit.get(context).obscureLogin();
                                },
                                icon: LoginCubit.get(context).isOb ? Icon(Icons.visibility_off) : Icon(Icons
                                    .visibility),
                              ),
                            ),
                            obscureText: LoginCubit.get(context).isOb,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container
                            (
                            width: double.infinity,
                            height: 50.0,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate())
                                  {
                                    _formKey.currentState!.save();
                                    //print(' Email: $_email, Password: $_password');
                                    if(LoginCubit.get(context).isMentor)
                                    {
                                      LoginCubit.get(context).clientLogin(email:emailController.text , password:passwordController.text);
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MenteeProfile()));
                                    }
                                    else
                                    {
                                      LoginCubit.get(context).mentorLogin(email:emailController.text , password:passwordController.text);
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileSetup()));
                                    }
                                  }
                                },
                                child: Text("Login",
                                  style: TextStyle
                                    (
                                    fontSize: 20.0, fontWeight: FontWeight.w500
                                    ),
                                )
                            ),
                          ),
                          /*Center(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ConsultRegister(),
                                ));
                              },
                              child: Text("Sign Up")),
                        ),*/
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ForgotPassword(),));
                              }, child: Text(
                                "Forgot password ?",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17.0,
                                    color: Colors.black
                                ),
                              )
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1.0,
                                  width: double.infinity,
                                  color: Colors.black,
                                ),
                              ),
                              Center(
                                  child:
                                  Text('   OR   ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[500]),
                                  )
                              ),
                              Expanded(
                                child: Container(
                                  height: 1.0,
                                  width: double.infinity,
                                  color: Colors.black,
                                ),
                              ),
                            ],

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account ?',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17.0,
                                    color: Colors.black
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    LoginCubit.get(context).isMentor?Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ConsultRegister(),)):Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MentorReg(),));
                                  },
                                  child: Text(
                                    "Register now ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17.0,
                                        color: Colors.blue
                                    ),
                                  )
                              )
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
        },
      ),
    );
  }


}



