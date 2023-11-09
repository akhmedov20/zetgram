import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../chats/chats_screen.dart';
import '../explore/explore_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import '../upload/upload_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}
int selectedIndex=0;
class _MainScreenState extends State<MainScreen> {
  bool _onTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return UploadScreen();
          }));
        },
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (i){
          setState(() {
            selectedIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/home.svg",color: selectedIndex == 0 ? Colors.black : Colors.grey,),label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/send.svg",color: selectedIndex == 1 ? Colors.black : Colors.grey,),label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/message.svg",color: selectedIndex == 2 ? Colors.black : Colors.grey,),label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/user.svg",color: selectedIndex == 3 ? Colors.black : Colors.grey,),label: ""),
        ],
      ),
    );
  }
  List<Widget> screen = [
    HomeScreen(),
    ExploreScreen(),
    ChatsScreen(),
    ProfileScreen()
  ];
}
