
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_cubit.dart';
import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_states.dart';
import 'package:consultation_gp/modules/login/login_screen/login.dart';
import 'package:consultation_gp/network/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
class ProfileSetting extends StatelessWidget {
  ProfileSetting({Key? key}) : super(key: key);


  final formKey = GlobalKey<FormState>();
  var jobController=TextEditingController();
  var companyController=TextEditingController();
  var skillsController=TextEditingController();
  var addressController=TextEditingController();
  var countryController=TextEditingController();
  var cityController=TextEditingController();
  var zipController=TextEditingController();
  var bioController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MentorCubit,ConsultStates>(
      listener: (context,state){},
      builder: (context,state)=>Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Profile settings',)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Center(
                    child: Stack(children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        width: 110,
                        height: 110,
                        child: ConditionalBuilder(
                            condition: MentorCubit.get(context).file!=null,
                            builder: (context)=>CircleAvatar(
                                backgroundImage: FileImage(MentorCubit.get(context).file!)
                            ),
                            fallback: (context)=>CircleAvatar(
                                backgroundImage: NetworkImage('${MentorCubit.get(context).dashboardModel!.photo}')
                            ),
                        )

                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: ()
                        {
                          MentorCubit.get(context).imagePicker();
                        },
                        child: Text("Upload Image"),
                      ),
                      if(MentorCubit.get(context).file!=null)
                      ElevatedButton(
                        onPressed: ()
                        {
                          MentorCubit.get(context).postImage();
                        },
                        child: Text("Save Image"),
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
                      MentorCubit.get(context).dateController==null?
                      "Date of birth: ${MentorCubit.get(context).mentorProfileModel!.birthDate!}":
                      "Date of birth: "
                          "${MentorCubit.get(context).dateController}"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: ()
                        {
                          MentorCubit.get(context).datePicker(context: context);
                        },
                        child: Text(
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            "Select a date") ),
                  )
                  ,
                  SizedBox(height: 20.0,),
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
                    controller: jobController,
                    //onSaved: (value) => _firstname = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "${MentorCubit.get(context).mentorProfileModel!.jobTitle!}",
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
                    controller: companyController,
                    //onSaved: (value) => _firstname = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "${MentorCubit.get(context).mentorProfileModel!.company!}",
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
                          hint: Text('${MentorCubit.get(context).mentorProfileModel!.gender!}'),
                          items: ["male", "female",].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
                          onChanged: (val){
                            MentorCubit.get(context).genderDropDown(value: val);
                          },
                          value: MentorCubit.get(context).selectedGender,
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: DropdownButton(
                          isExpanded: true,
                          hint: Text('${MentorCubit.get(context).mentorProfileModel!.category!}'),
                          items: ["Software", "Marketing","Business",].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
                          onChanged: (val){
                            MentorCubit.get(context).categoryDropDown(value: val);
                          },
                          value: MentorCubit.get(context).selectedCategory,
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
                            "Experience: "),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child:  Text(
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.grey,
                            ),
                            "Years of Exp: "),
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
                          hint: Text('${MentorCubit.get(context).mentorProfileModel!.experience!}'),
                          items: ["Senior", "Junior","Mid-Level",].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
                          onChanged: (val){
                            MentorCubit.get(context).experienceDropDown(value: val);
                          },
                          value: MentorCubit.get(context).selectedExperience,
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: DropdownButton(
                          isExpanded: true,
                          hint: Text('${MentorCubit.get(context).mentorProfileModel!.yearsOfExperience!}'),

                          onChanged: (val){
                            MentorCubit.get(context).yearsDropDown(value: val);
                          },
                          value: MentorCubit.get(context).selectedYears,
                          items: ["5", "6","7","8", "9","10","11", "12","13","14", "15","16","17", "18","19","20", "21","22","23", "24","25",].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),

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
                      "Skills: "),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter your Skills";
                      }
                      return null;
                    },
                    controller: skillsController,
                    //onSaved: (value) => _firstname = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "${MentorCubit.get(context).mentorProfileModel!.skills!}",
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
                    controller: addressController,
                    //onSaved: (value) => _firstname = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "${MentorCubit.get(context).mentorProfileModel!.address!}",
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
                    controller: countryController,
                    //onSaved: (value) => _firstname = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "${MentorCubit.get(context).mentorProfileModel!.country!}",
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
                        return "${MentorCubit.get(context).mentorProfileModel!.city!}";
                      }
                      return null;
                    },
                    controller: cityController,
                    //onSaved: (value) => _firstname = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "${MentorCubit.get(context).mentorProfileModel!.city!}",
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
                    controller: zipController,
                    //onSaved: (value) => _firstname = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "${MentorCubit.get(context).mentorProfileModel!.zipCode!}",
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
                    controller: bioController,
                    //onSaved: (value) => _firstname = value!,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "${MentorCubit.get(context).mentorProfileModel!.bio!}",
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
                        onPressed: ()
                        {
                            MentorCubit.get(context).profileSetup(
                                jobTitle: jobController.text.trim(),
                                company: companyController.text.trim(),
                                skills: skillsController.text.trim(),
                                country: countryController.text.trim(),
                                city: cityController.text.trim(),
                                address: addressController.text.trim(),
                                zipCode: zipController.text.trim(),
                                bio: bioController.text.trim(),
                                context: context
                            );
                          MentorCubit.get(context).postImage();
                          MentorCubit.get(context).getTimes();
                          MentorCubit.get(context).getMentorDashboardData();
                          MentorCubit.get(context).getProfileData();
                        },
                        child: Text("Submit",
                          style:TextStyle(
                              fontSize: 20.0
                          )
                          ,),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


