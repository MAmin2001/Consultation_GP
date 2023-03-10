import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class ProfileSetup extends StatefulWidget {
   ProfileSetup({Key? key}) : super(key: key);

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  var selectedCategroy,selectedSkills,selectedExperience,selectedGender;
  DateTime date = DateTime.now();
     File _file = File("")  ;
  Future pickerCamera ()async{
    final myfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _file = File(myfile!.path) ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Profile setup')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Center(
                 child: Stack(children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              width: 90,
                              height: 90,
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                child:
                                _file == null ?
                                Icon(
                                  Icons.account_circle_rounded,
                                  color: Colors.white,) :
                                Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: FileImage(_file)
                                      )
                                    ),
                                    ),),
                            ),
                          ]),
               ),
              SizedBox(
                          width: 20,
                        ),
              Center(
                child: ElevatedButton(
                            onPressed: pickerCamera,
                            child: Text("Upload Image"),
                          ),
              ),
              SizedBox(height: 20.0,),
              /*Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "Gender: "),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your gender";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  labelText: "Gender",
                  hintText: "enter your gender",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),*/
              Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "Date of birth: "
                      "${date.day}/${date.month}/${date.year}"),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                       DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: date,
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2100));
                       if(newDate == null) return;
                       setState(() {
                         date=newDate;
                       });
                    },
                    child: Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                    "Select a date") ),
              )
              ,
              /*TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your Date of birth";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Day-Month-Year",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),*//*TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your Date of birth";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Day-Month-Year",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),*/
              //SizedBox(height: 20.0,),
              Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "Job title: "),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your job title";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "enter your job title",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "Company: "),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your company";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "enter your company",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.grey,
                        ),
                        "Gender: "),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child:  Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.grey,
                        ),
                        "Category: "),
                  ),
                  SizedBox(height: 5.0,),
                ],
              ),
              SizedBox(width: 5.0,),
              Row(
                children: 
                [
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      hint: Text('Gender'),
                      items: ["Male", "Female",].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
                      onChanged: (val){
                      setState(() {
                      selectedGender = val;
                      });
                      },
                      value: selectedGender,
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      hint: Text('Category'),
                      items: ["Software", "Marketing","Business",].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
                      onChanged: (val){
                        setState(() {
                          selectedCategroy = val;
                        });
                      },
                      value: selectedCategroy,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.grey,
                        ),
                        "Skills: "),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child:  Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.grey,
                        ),
                        "Experience: "),
                  ),
                  SizedBox(height: 5.0,),
                ],
              ),
              SizedBox(width: 5.0,),
              Row(
                children:
                [
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      hint: Text('Skills'),
                      items: ["php", "laravel","Flutter", "Java Script","APIs", "Firebase",].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
                      onChanged: (val){
                        setState(() {
                          selectedSkills = val;
                        });
                      },
                      value: selectedSkills,
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      hint: Text('Experience'),
                      items: ["Senior", "Junior","Mid-Level",].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
                      onChanged: (val){
                        setState(() {
                          selectedExperience = val;
                        });
                      },
                      value: selectedExperience,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "Years of experience: "),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your years of experience";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "enter your years of experience",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "Address: "),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your address";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "enter your address",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "Country: "),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your country";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "enter your country",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "City: "),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your city";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "enter your city",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "Zip code: "),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your zip code";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "enter your zip code",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                  "Bio: "),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                maxLines: 5,
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your bio";
                  }
                  return null;
                },
                //onSaved: (value) => _firstname = value!,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "enter your bio",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Center(
               child: Container(
                 height: 50.0,
                 width: 100.0,
                 child: ElevatedButton(
                         onPressed: () {},
                         child: Text("Submit"),
                   ),
               ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
