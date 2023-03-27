import 'package:consultation_gp/layout/consult_cubit/consult_cubit.dart';
import 'package:consultation_gp/layout/consult_cubit/consult_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends  StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConsultCubit,ConsultStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = ConsultCubit.get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[100],
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            elevation: 50.0,
            onTap: (index){
              cubit.changeBottomNavIndex(index);
            },
            currentIndex: cubit.currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon:Icon(Icons.dashboard,),
                  label: 'Dashboard'
              ),
              BottomNavigationBarItem(
                  icon:Icon(Icons.book,),
                  label: 'Bookings'
              ),
              BottomNavigationBarItem(
                  icon:Icon(Icons.file_copy,),
                  label: 'Invoices'
              ),
              BottomNavigationBarItem(
                  icon:Icon(Icons.reviews_outlined,),
                  label: 'Reviews'
              ),
              BottomNavigationBarItem(
                  icon:Icon(Icons.person,),
                  label: 'Profile'
              ),
            ],
          ),
        );
      },
    );
  }
}
