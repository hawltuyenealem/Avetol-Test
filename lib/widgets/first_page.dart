import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home_page_screen.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 16),
          decoration: BoxDecoration(color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              customNavItem(index: 0,label: "Home", icon:const  ImageIcon(AssetImage("assets/images/home 1.png"),color: Colors.white,)),
              customNavItem(index:1,label: "Browse", icon: const Icon(FeatherIcons.search,color: Colors.white,)),
              customNavItem(index:2,label: "Live TV", icon: const ImageIcon(AssetImage("assets/images/television 1.png"),color: Colors.white,)),
              customNavItem(index:3,label: "Account", icon: CircleAvatar(child: Image.asset("assets/images/account.png"),)),
            ],
          ),
        )
        );
  }

  Widget customNavItem({required String label, required Widget icon,required int index}) {
    return InkWell(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height:30,width:40,child: icon),
          const SizedBox(
            height: 3,
          ),
          Text(label,style: TextStyle(color: index ==_selectedIndex ?Colors.blue:Colors.white,fontSize: 10,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
