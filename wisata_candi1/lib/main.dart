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
        title: 'Take Picture',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.deepPurple),
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          colorScheme:
          ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
            primary: Colors.deepPurple,
            surface: Colors.deepPurple[50],
          ),
          useMaterial3: true,
        ),
        home: const HomeScreen(title: 'Take Picture'),
        initialRoute: '/',
        routes: {
          '/homescreen': (context) => const HomeScreen(title: 'Take Picture',),
          '/Signin' : (context) => SignInScreen(),
          '/Signup' : (context) => const SignUpScreen(),

        }
    );
  }
}
class MainSreen extends StatefulWidget { const MainSreen({super.key});
@override
State<MainSreen> createState() => _MainSreenState(); }
class _MainSreenState extends State<MainSreen> {
  // TODO: 1. Deklarasikan variabel
  int _currentIndex = 0;
  final List<Widget> _children = [ const HomeScreen(title: '',),
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