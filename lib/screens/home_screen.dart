import 'package:depi_task_3/manager/cubit/is_grid_view_cubit.dart';
import 'package:depi_task_3/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IsGridViewCubit(),
      child: Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFFAFAFA),

          surfaceTintColor: Colors.transparent,
          scrolledUnderElevation: 0,
          title: Text(
            "Food Delivery",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        body: HomeScreenBody(),
      ),
    );
  }
}
