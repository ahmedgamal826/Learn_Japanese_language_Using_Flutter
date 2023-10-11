import 'package:flutter/material.dart';
import 'package:tokuappnew/screens/Colors_page.dart';
import 'package:tokuappnew/screens/FamilyMembers_Page.dart';
import 'package:tokuappnew/screens/Pharses_Page.dart';
import '../components/category_item.dart';
import 'Numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
          backgroundColor: Color(0xff49332A),
          title:Text("Toku") ),

      body: Column(

        children: [

          Category(text: "Numbers",
            color: Color(0xffF99531),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder :(context)
              {
                return NumbersPage();
              })
              );
            },
          ),

          Category(
            text: "Family Members",
            color: Color(0xff528032),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder :(context)
              {
                return FamilyMembersPage();
              })
              );
            },
          ),

          Category(
            text: "Colors",
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder :(context)
              {
                return ColorsPage();
              })
              );
            },
            color: Color(0xff7D40A2),     //
          ),

          Category(
            text: "Phrases",
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder :(context)
              {
                return PharsesPage();
              })
              );
            },
          color: Color(0xff47A5CB),)
        ],


      ),


    );
  }
}


