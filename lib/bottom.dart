
import 'package:app_all_practice/home.dart';
import 'package:app_all_practice/screens/doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
int _selectedIndex = 0;

static final List<Widget>_widgetOptions = <Widget> [
const Home(),
const Doctors(),
const  Text("ADD req"),
const Text("Orders"),
const  Text("Menu"),
]; 

void _tappedItem(int index){

setState(() {
  _selectedIndex=index;
});
// print('${_selectedIndex}');
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: _widgetOptions[_selectedIndex]) ,

      


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _tappedItem,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color.fromARGB(255, 16, 157, 228),
        unselectedItemColor: Color.fromARGB(255, 176, 181, 191),
        type: BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Dashboard"),
        BottomNavigationBarItem(icon: Icon(Icons.health_and_safety), label: "Doctors"),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: "Add request"),
        BottomNavigationBarItem(icon: Icon(Icons.medical_services_outlined), label: "Orders"),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu" )

      ],),

    );
  }
}