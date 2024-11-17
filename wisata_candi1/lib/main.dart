import 'package:flutter/material.dart';
import 'package:wisata_candi1/data/candi_data.dart';
import 'package:wisata_candi1/screens/detail_screen.dart';
import 'package:wisata_candi1/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfileScreen(),
    );
  }
}
class MainSreen extends StatefulWidget { const MainSreen({super.key});
@override
State<MainSreen> createState() => _MainSreenState(); }
class _MainSreenState extends State<MainSreen> {
  // TODO: 1. Deklarasikan variabel
  int _currentIndex = 0;
  final List<Widget> _children = [ const HomeScreen(),
    const SearchScreen(),
    const FavoriteScreen(),
    const ProfileScreen(), ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// TODO: 2. Buat properti body berupa widget yang ditampilkan
      body: _children[_currentIndex],
// TODO: 3. Buat properti bottomNavigationBar dengan nilai Theme
      bottomNavigationBar: Theme(
// TODO: 4. Buat data dan child dari Theme
        data: Theme.of(context).copyWith(
          canvasColor: Colors.deepPurple[50], ),
        child: BottomNavigationBar( currentIndex: _currentIndex, onTap: (index){
          setState(() {
            _currentIndex = index; });
        },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.deepPurple,), label: 'Home',
            ), BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.deepPurple,),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.deepPurple,), label: 'Favorite',
            ), BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.deepPurple,),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.deepPurple, unselectedItemColor: Colors.deepPurple[100], showUnselectedLabels: true,
        ),
      ),
    );
  }
}