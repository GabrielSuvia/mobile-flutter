import 'package:flutter/material.dart';
import './screen/register_page.dart';

void main() {
  runApp(MyApp());
}

// Root Widget
class MyApp extends StatelessWidget {
      const MyApp({super.key});//it can change
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navbar Demo',
      home: HomeNavigation(title: 'he2llo',),
    );
  }
}

// Main screen with navbar
class HomeNavigation extends StatefulWidget {
  final dynamic title;

  const HomeNavigation({super.key, required this.title});
  @override
  _HomeNavigationState createState() => _HomeNavigationState();//return all component widget
}

class _HomeNavigationState extends State<HomeNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    LoginPage(),
    RegisterPage(),
  ];

  final List<String> _titles = [
    "Home",
    "Login",
    "Register",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_currentIndex])),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration),
            label: 'Register',
          ),
        ],
      ),
    );
  }
}

// Pages (simplified)
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Welcome to the Home Page!'));
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Login Page (Coming Soon)'));
  }
}


