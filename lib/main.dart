import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'logic/cubit/counter_cubit.dart';
import 'presentation/screens/home_screen.dart';
import '/presentation/router/app_router.dart';

void main() async {
/*
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
*/

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
/*

import 'dart:async';

import 'package:flutter/material.dart';
import '../pages/free_course_page.dart';
import '../pages/course_accept_page.dart';
import '../pages/my_course_page.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({Key? key}) : super(key: key);

  @override
  _TabbarWidgetState createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> {
  int currentIndex = 0;
  final screens = [
    FreecoursePage(),
    CourseacceptPage(),
    MycoursePage(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        //body: screens[currentIndex],
      /*  bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          iconSize: 30,
          selectedFontSize: 20,
          unselectedFontSize: 13,
          //height: 60,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.event_available),
                label: 'Disponibles',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
              icon: Icon(Icons.done),
              label: 'Acceptées',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.drive_file_move_outline),
              label: 'Ma Course',
            )
          ],  ),*/



          navigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (index) => setState(() => this.currentIndex),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.email_outlined),
              selectedIcon: Icon(Icons.email),
              label: 'Disponibles',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_bubble_outlined),
              selectedIcon: Icon(Icons.chat_bubble),
              label: 'Acceptés',
            ),
            NavigationDestination(
              icon: Icon(Icons.videocam_outlined),
              selectedIcon: Icon(Icons.videocam),
              label: 'Ma course',
            ),
          ],
      ),
      );

*/