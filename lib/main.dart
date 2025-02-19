import 'package:flutter/material.dart';
import 'TabNavigationBar.dart';


void main() async {
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tab',
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNavi(),
        '/productPage': (context) => ProductPage(),
        '/productDetail': (context) => ProductDetailPage(),
        '/Popinfo': (context) => Poppage(),
        '/Colorbg': (context) => BackgroundColorScreen(),
        '/Dolists': (context) => TodoListScreen(),
        '/page1': (context) => TaskPage(),
        '/page2': (context) => SubjectScreen(),
        '/page3': (context) => LoginScreen(),
        '/page4': (context) => HomeScreen(),
            '/register': (context) => RegisterScreen(),
        '/dashboard': (context) => DashboardScreen(),
      },
    );
  }
}
