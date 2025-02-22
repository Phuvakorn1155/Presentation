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
        '/': (context) => BottomNavi(), //แท็บเนวิเคชั่น
        '/productPage': (context) => ProductPage(), //หน้าสินค้าแสดง
        '/productDetail': (context) => ProductDetailPage(), //หน้าสินค้ารายละเอียดสินค้า
        '/Popinfo': (context) => Poppage(), //หน้าแสดง information
        '/Colorbg': (context) => BackgroundColorScreen(), //หน้าทดสอบสี
        '/Dolists': (context) => TodoListScreen(), //หน้าสร้างรายการของคุณ
        '/page1': (context) => TaskPage(), //หน้าตารางงาน
        '/page2': (context) => SubjectScreen(), //หน้ารายชื่อวิชาการสอน
        '/page3': (context) => LoginScreen(), // หน้าเข้าสู่ระบบ (เข้าสู่ระบบ-ลงทะเบียน/ชำระวงเงินบัตรเครดิต)
        '/page4': (context) => HomeScreen(), //ข้อมูลลงทะเบียน(input) - แสดงข้อมูลลงทะเบียน(output)
        '/register': (context) => RegisterScreen(), //หน้าลงทะเบียน (เข้าสู่ระบบ-ลงทะเบียน/ชำระวงเงินบัตรเครดิต)
        '/dashboard': (context) => DashboardScreen(), //หน้าแสดงยอดชำระเงิน (เข้าสู่ระบบ-ลงทะเบียน/ชำระวงเงินบัตรเครดิต)
      },
    );
  }
}
