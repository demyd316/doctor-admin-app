import 'package:doctorgo_doctor/views/home/billing/billing_page.dart';
import 'package:doctorgo_doctor/views/tabs/medical_prescription.dart';
import 'package:doctorgo_doctor/views/tabs/homePage.dart';
import 'package:doctorgo_doctor/views/tabs/patientsPage.dart';
import 'package:doctorgo_doctor/views/tabs/social_network.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget{
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  int _currentTabIndex = 2;

  List<Widget> _tabs = [];

  @override
  void initState() {
    _tabs = [
      SocialNetwork(),
      MedicalPrescription(fromBook: false,),
      HomePage(),
      BillingPage(fromBook: false,),
      PatientsPage(),
    ];
    super.initState();
  }


  _changeTab(int val){
    setState(() {
      _currentTabIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentTabIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        onTap: (ind)=> _changeTab(ind),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              child: Image.asset("assets/icon/team.png", color: _currentTabIndex == 0 ? Color(0xff2d79e6) : Colors.grey,)
            ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              child: Image.asset("assets/icon/prescription.png", color: _currentTabIndex == 1 ? Color(0xff2d79e6) : Colors.grey,)
            ),
            title:Container()
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              child: Image.asset("assets/icon/home.png", color: _currentTabIndex == 2 ? Color(0xff2d79e6) : Colors.grey,)
            ),
            title:Container()
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              child: Image.asset("assets/icon/bill.png", color: _currentTabIndex == 3 ? Color(0xff2d79e6) : Colors.grey,)
            ),
            title:Container()
          ),

          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              child: Image.asset("assets/icon/patients.png", color: _currentTabIndex == 4 ? Color(0xff2d79e6) : Colors.grey,)
            ),
            title:Container()
          ),
        ],
      ),
    );
  }
}
