import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_cubit.dart';
import 'package:consultation_gp/modules/mentee/booking_steps/appointment_cost/appointment_cost.dart';
import 'package:consultation_gp/modules/mentee/booking_steps/booking_details/booking_details.dart';
import 'package:consultation_gp/modules/mentor/incvoices/invoice_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class PaymentInfo extends StatelessWidget {
  PaymentInfo({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  var accHolderNameController=TextEditingController();
  var routingNumberController=TextEditingController();
  var accNumberController=TextEditingController();

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text('Payment Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0,left: 20.0,right: 20.0,bottom: 40.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('Account Holder Name:',style: TextStyle(fontSize: 18.0),),
                SizedBox(height:10.0),
                TextFormField(
                  controller: accHolderNameController,
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "Please enter accout holder name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    ),
                    hintText: /*MentorCubit.get(context).paymentInfoModel!.data!.holderName==null?*/
                    "Mohamed Mohamed ibrahim hassanein"
                         /* :'${MentorCubit.get(context).paymentInfoModel!.data!.holderName}'*/,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height:20.0),
                Text('Routing Number:',style: TextStyle(fontSize: 18.0),),
                SizedBox(height:10.0),
                TextFormField(
                  controller: routingNumberController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "Please enter the Routing number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    ),
                    hintText: /*MentorCubit.get(context).paymentInfoModel!.data!.routingNumber==null?*/
                    "123456987456"
                          /*:'${MentorCubit.get(context).paymentInfoModel!.data!.routingNumber}'*/,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height:20.0),
                Text('Account Number:',style: TextStyle(fontSize: 18.0),),
                SizedBox(height:10.0),
                TextFormField(
                  controller: accNumberController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "Please enter the Account number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    ),
                    hintText: /*MentorCubit.get(context).paymentInfoModel!.data!.accountNumber==null?*/
                    "321459762147"
                          /*:'${MentorCubit.get(context).paymentInfoModel!.data!.accountNumber}'*/,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),

                SizedBox(height:20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        width: 100.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Center(
                          child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                        ),
                      ),
                      onTap: (){
                        if(formKey.currentState!.validate())
                        {
                          MentorCubit.get(context).postPaymentInfo(
                              accHolderName: accHolderNameController.text.trim(),
                              routingNumber: routingNumberController.text.trim(),
                              accountNumber: accNumberController.text.trim()
                          );
                        }
                      },
                    ),
                  ],
                )




              ],
            ),
          ),
        ),
      ),
    );
  }



}






/*Future<dynamic> successfulPaymentDialog({
  required context,

}) => showDialog(
  context: context,
  builder: (context){
    return AlertDialog(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      contentPadding: const EdgeInsets.all(0.0),
      content: Container(
        height: 300,
        padding: EdgeInsets.all(10),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.check_circle, color: Colors.blue,size: 70,),
            Text(
              'Appointment booked successfully',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
            Text(
              'Waiting for mentor confirmation',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600
              ),),
            InkWell(
              child: Container(
                width: double.infinity,
                height: 45.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5.0)
                ),
                child: Center(
                  child: Text('View Invoice', style: TextStyle(color: Colors.white,fontSize: 18.0),),
                ),
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => InvoiceView()));
              },
            ),
          ],
        )),
      ),
    );
  },
);*/


