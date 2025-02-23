import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  runApp(BottomNavi());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavi(),
    );
  }
}

class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    if (index == 2) {
      // Navigate to Goods (ProductPage).
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductPage()),
      );
    } else if (index == 4) {
      // Navigate to Info (PopPage).
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Poppage()),
      );
    } else if (index == 5) {
      // Navigate to Info (ALists).
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ALists()), //ALists
      );
    } else if (index == 3) {
      // Navigate to Info (PopPage).
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                MyGame()), //'/random100': (context) => MiniGame(),
      );

      GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyGame()), // Link to MiniGame
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xFFFCF8F3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: Icon(Icons.arrow_forward_ios, color: Color(0xFF16130C)),
            title: Text(
              'มาเล่นเกมทายเลข 1 ถึง 100',
              style: TextStyle(
                  color: Color(0xFF191919), fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'มาเล่นท้าทายมากขึ้นด้วยเลข 1 ถึง 100!',
              style: TextStyle(color: Color(0xFF313131)),
            ),
          ),
        ),
      );
    } else if (index == 1) {
      // Navigate to Info (BackgroundColorApp).
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BackgroundColorScreen()),
      );
    } else if (index == 0) {
      // Navigate to Info (TodoListScreen).
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TodoListScreen()),
      );
    } else {
      setState(() {
        _selectedIndex = index; // Handle other tabs.
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF612843),
        title: Text(
          'แถบนำทางแบบแท็บ',
          style: TextStyle(color: Color(0xfff0f0f0)),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFFFFAFC),
      body: Center(
        child: Text(
          "ตอนนี้คุณอยู่ในหน้าแท็บที่: ${_selectedIndex + 1}",
          style: TextStyle(fontSize: 24),
          //(color: Color(0xfff0f0f0)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffe84619), // Selected item color
        unselectedItemColor: Color(0xFF301E1B), // Unselected item color
        showUnselectedLabels: true,
        currentIndex: _selectedIndex, // Highlight the selected index
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "หน้าแรก/จดบันทึก",
            backgroundColor: Color(0xffF5F5F5),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: "สี",
            backgroundColor: Color(0xffF5F5F5),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), // Goods tab
            label: "สินค้า",
            backgroundColor: Color(0xffF5F5F5),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: "เกมส์",
            backgroundColor: Color(0xffF5F5F5),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "ข้อมูล",
            backgroundColor: Color(0xffF5F5F5),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded),
            label: "การเรียนรู้ของฉัน",
            backgroundColor: Color(0xffF5F5F5),
          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: 12),
        unselectedLabelStyle: TextStyle(fontSize: 12),
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'title': 'Item 1',
      'price': '\$155',
      'image': 'https://i.ebayimg.com/images/g/XNQAAOSwpdZnT1jj/s-l1600.jpg',
      'detail': 'Tommy Bahama Mens Silk Tie Yellow With Pineapple.'
    },
    {
      'title': 'Item 2',
      'price': '\$157',
      'image': 'https://i.ebayimg.com/images/g/dJYAAOSwxnBlb-K4/s-l1600.jpg',
      'detail':
          'Peter Blair 100% Silk Tie Tomato Pattern Yellow Red Green Made in USA Designer”.'
    },
    {
      'title': 'Item 3',
      'price': '\$76',
      'image': 'https://i.ebayimg.com/images/g/VekAAOSwPHJma4ep/s-l1600.jpg',
      'detail':
          'Men’s Brooks Brothers Makers 100% Silk Yellow Tie W/Pineapples.'
    },
    {
      'title': 'Item 4',
      'price': '\$67',
      'image': 'https://i.ebayimg.com/images/g/jjIAAOSwn9hmn~sD/s-l1600.jpg',
      'detail':
          'Salvatore Ferragamo Men\'s Silk Tie Yellow Pineapple Print Made In Italy.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5EBD6),
      appBar: AppBar(
        backgroundColor: Color(0xFFFEEEBd),
        title: Text(
          'หน้าสินค้า',
          style: TextStyle(color: Color(0xFF080004)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 7,
            mainAxisSpacing: 7,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/productDetail',
                  arguments: products[index],
                );
              },
              child: Container(
                color: Color(0xFFFCF8F3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.network(
                        products[index]['image']!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index]['title']!,
                            style: TextStyle(
                              color: Color(0xFF191919),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            products[index]['price']!,
                            style: TextStyle(
                              color: Color(0xFF313131),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.zoom_in,
                        color: Color(0xFF16130C),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> product =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      backgroundColor: Color(0xFFF5EBD6),
      appBar: AppBar(
        backgroundColor: Color(0xFFFEEEBd),
        title: Text(
          'รายละเอียดสินค้า',
          style: TextStyle(color: Color(0xFF080004)),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF311E1B)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Color(0xFFFCF8F3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                product['image']!,
                height: 320,
                width: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  product['title']!,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF191919),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  product['price']!,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF313131),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Color(0xFF16130C),
                    size: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product['detail']!,
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF16120E),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//https://api.flutter.dev/flutter/cupertino/CupertinoIcons-class.html
class Poppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'แสดงข้อมูลInfor',
          style: TextStyle(color: Color(0xFF080004)),
        ),
        backgroundColor: Color(0xFFE9CECC),
      ),
      backgroundColor: Color(0xFFF8EFEE),
      body: ListView(
        children: [
          // Friend 1: Sofia Falcone
          ListTile(
            leading: Icon(Icons.person_outline_rounded,
                color: Color(0xFFf4775c), size: 39), // Leading icon
            title: Text(
              'โปรไฟล์:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'ข้อมูลผู้จัดทำ',
              style: TextStyle(fontSize: 18),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF31515f)),
            onTap: () {
              // Show dialog on tap
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor:
                        Color(0xFFfcfdf9), // Dialog background color
                    title: Text('ข้อมูลผู้จัดทำ'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ชื่อ: ภูวกร'
                          '\nนามสกุล: รุ่งปิติศุภากร'
                          '\nชื่อเล่น: โฟกัส'
                          '\n'
                          '\nเพศ: ชาย'
                          '\nอายุ: 20 (2024)'
                          '\nวันเกิด: 8 มีนาคม 2547',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          //'สัญชาติ: ไทย\nเชื้อชาติ: ไทย\nศาสนา: พุทธศาสนา',
                          '',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'ปิด',
                          style: TextStyle(
                              color: Color(0xffcf2600),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          //ขึ้นใหม่  //https://www.boltuix.com/2023/05/adding-icons-to-your-flutter.html
          // Friend 2: Alberto Falcone
          ListTile(
            leading: Icon(Icons.collections_bookmark_outlined,
                color: Color(0xFFf4775c), size: 39),
            title: Text(
              'ประวัติการศึกษา:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'ข้อมูลประวัติการศึกษา',
              style: TextStyle(fontSize: 18),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF31515f)),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Color(0xFFfcfdf9),
                    title: Text('ข้อมูลประวัติการศึกษา'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ปริญญาตรี:\n'
                          'มหาวิทยาลัยเทคโนโลยีราชมงคลรัตนโกสินทร์ วิทยาเขตบพิตรพิมุขจักรวรรดิ\nคณะบริหารธุรกิจ\nสาขาวิชาเทคโนโลยีสารสนเทศทางธุรกิจ \n2565 - ปัจจุบัน\n'
                          '\nปวช:\n'
                          'วิทยาลัยพณิชยการธนบุรี\nแผนกภาษาต่างประเทศ \n2562 - 2565\n'
                          '\nมัธยมต้น:\n'
                          'โรงเรียนไตรมิตรวิทยาลัย \n2559 – 2562',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'ปิด',
                          style: TextStyle(
                              color: Color(0xffcf2600),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          //ขึ้นใหม่
          // Friend 3: Carmine Falcone
          ListTile(
            leading: Icon(Icons.lightbulb_circle_outlined,
                color: Color(0xFFf4775c), size: 39),
            title: Text(
              'ทักษะความสามารถ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'ข้อมูลทักษะความสามารถ',
              style: TextStyle(fontSize: 18),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF31515f)),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Color(0xFFfcfdf9),
                    title: Text('ข้อมูลทักษะความสามารถ'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '- การเขียนโปรแกรม/เขียนเว็บไซต์ html\n'
                          '- ทักษะด้านภาษา (อังกฤษ)\n'
                          '- คอมพิวเตอร์เบื้องต้น\n'
                          '- การถ่ายภาพ (ส่วนมากก็ถ่ายรูปเล่น)',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'ปิด',
                          style: TextStyle(
                              color: Color(0xffcf2600),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          //ขึ้นใหม่
          // Friend 4: Mario Falcone
          ListTile(
            leading:
                Icon(Icons.pin_drop_sharp, color: Color(0xFFf4775c), size: 39),
            title: Text(
              'ที่อยู่/ช่องทางการติดต่อ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'ข้อมูลที่อยู่ปัจจุบัน/ข้อมูลช่องทางการติดต่อ',
              style: TextStyle(fontSize: 18),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF31515f)),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Color(0xFFfcfdf9),
                    title: Text('ข้อมูลที่อยู่ปัจจุบัน'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ที่อยู่ปัจจุบัน:'
                          '\n365/3-4\nถนนประชาธิปก'
                          'แขวง สมเด็จเจ้าพระยา'
                          'เขต คลองสาน\n'
                          'กรุงเทพมหานคร 10600\n'
                          '\nช่องทางการติดต่อ:'
                          '\nอีเมล์ : 3651051541155@rmutr.ac.th\n'
                          'ทวิตเตอร์ (X): @Phuvakorn_Focus\n'
                          'โทรศัพท์: 099 843 8560',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'ปิด',
                          style: TextStyle(
                              color: Color(0xffcf2600),
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          //ขึ้นใหม่
          // Friend 5: Luca Falcone
          ListTile(
            leading:
                Icon(Icons.star_border, color: Color(0xFFf4775c), size: 39),
            title: Text(
              'ข้อมูลอื่นๆ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'ข้อมูลอื่นๆเพิ่มเติม',
              style: TextStyle(fontSize: 18),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF31515f)),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Color(0xFFfcfdf9),
                    title: Text('ข้อมูลเพิ่มเติม'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'สัญชาติ: ไทย\nเชื้อชาติ: ไทย\nศาสนา: พุทธ'
                          '\nภูมิลำเนาเป็นคนจังหวัดพะเยา\n'
                          'เป็นคนที่มีเลือดกรุ๊ป A\n'
                          '\nสิ่งที่ชอบ:'
                          '\nฉันชอบสื่อที่เกี่ยวข้องกับแบทแมน\n'
                          '\nกิจวัตรประจําวันยามว่าง:'
                          '\nเลี้ยงแมว 1 ตัวชื่อหลังขาวตัวผู้สีขาวดำมีลักษณะเด่นมีหลังสีขาวบริเวณหลังคอและมีขีดสีขาวบนหลัง'
                          '\nชอบปลูกวัชพืช',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'ปิด',
                          style: TextStyle(
                              color: Color(0xffcf2600),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          //?
        ],
      ),
    );
  }
}

class BackgroundColorScreen extends StatefulWidget {
  @override
  _BackgroundColorScreenState createState() => _BackgroundColorScreenState();
}

class _BackgroundColorScreenState extends State<BackgroundColorScreen> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    TextEditingController colorController =
        TextEditingController(text: _backgroundColorToHex(_backgroundColor));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("เปลี่ยนสีพื้นหลัง"),
          content: TextField(
            controller: colorController,
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                  RegExp(r'^#([A-Fa-f0-9]{0,6})$')),
            ],
            decoration: InputDecoration(
              hintText: "Enter HEX color (e.g., #FFFFFF)",
            ),
            onChanged: (value) {
              if (!value.startsWith('#')) {
                colorController.text = '#';
                colorController.selection = TextSelection.fromPosition(
                    TextPosition(offset: colorController.text.length));
              }
            },
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                String hexColor = colorController.text;
                if (hexColor.length != 7) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("สี HEX ต้องมีอักขระ 6 ตัวหลัง '#'"),
                    ),
                  );
                } else {
                  try {
                    setState(() {
                      _backgroundColor =
                          Color(int.parse("0xFF" + hexColor.substring(1)));
                    });
                    Navigator.pop(context);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("รูปแบบสี HEX ไม่ถูกต้อง")),
                    );
                  }
                }
              },
              child: Text("เปลี่ยน"),
            ),
          ],
        );
      },
    );
  }

  String _backgroundColorToHex(Color color) {
    return '#${color.value.toRadixString(16).substring(2).toUpperCase()}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ทดสอบสีพื้นหลัง"),
        backgroundColor: Color(0xFFF3D082),
        actions: [
          IconButton(
            icon: Icon(Icons.color_lens, color: Color(0xFF3C204B), size: 30),
            onPressed: _changeBackgroundColor,
          ),
        ],
      ),
      backgroundColor: _backgroundColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          color: Colors.grey[100],
          child: Text(
            'ตอนนี้พื้นหลังของคุณคือสี ${_backgroundColorToHex(_backgroundColor)}',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Color(0xFF16130C)),
          ),
        ),
      ),
    );
  }
}

class MakeALists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Map<String, dynamic>> _todos = [];
  Color _backgroundColor = Colors.white;

  void _addTodo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newTodo = "";
        String newSubtitle = "";
        return AlertDialog(
          title: Text("เพิ่มรายการใหม่ของคุณที่ต้องทำ"),
          backgroundColor: Color(0xFFFBFBF8),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  newTodo = value;
                },
                decoration: InputDecoration(hintText: "ป้อนชื่อเรื่องของคุณ"),
              ),
              SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  newSubtitle = value;
                },
                decoration: InputDecoration(hintText: "รายละเอียด (ไม่บังคับ)"),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (newTodo.isNotEmpty) {
                    _todos.add({
                      'text': newTodo,
                      'subtitle': newSubtitle,
                      'timestamp': DateTime.now().toString(), // เพิ่มเวลาโพสต์
                      'editedTimestamp': null,
                    });
                  }
                  Navigator.pop(context);
                });
              },
              child: Text("เพิ่ม"),
            ),
          ],
        );
      },
    );
  }

  void _editTodo(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String editedTitle = _todos[index]['text'];
        String editedSubtitle = _todos[index]['subtitle'];

        return AlertDialog(
          title: Text("แก้ไขรายการของคุณ"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  editedTitle = value;
                },
                controller: TextEditingController(text: _todos[index]['text']),
                decoration: InputDecoration(hintText: "แก้ไขชื่อเรื่องของคุณ"),
              ),
              SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  editedSubtitle = value;
                },
                controller:
                    TextEditingController(text: _todos[index]['subtitle']),
                decoration:
                    InputDecoration(hintText: "แก้ไขรายละเอียด (ไม่บังคับ)"),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _todos[index]['text'] = editedTitle;
                  _todos[index]['subtitle'] = editedSubtitle;
                  _todos[index]['editedTimestamp'] =
                      DateTime.now().toString(); // บันทึกเวลาแก้ไข
                });
                Navigator.pop(context);
              },
              child: Text("บันทึก/แก้ไข"),
            ),
          ],
        );
      },
    );
  }

  void _changeBackgroundColor() {
    TextEditingController colorController =
        TextEditingController(text: _backgroundColorToHex(_backgroundColor));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("เปลี่ยนสีพื้นหลัง"),
          content: TextField(
            controller: colorController,
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                  RegExp(r'^#([A-Fa-f0-9]{0,6})$')),
            ],
            decoration: InputDecoration(
              hintText: "Enter HEX color (e.g., #FFFFFF)",
            ),
            onChanged: (value) {
              if (!value.startsWith('#')) {
                colorController.text = '#';
                colorController.selection = TextSelection.fromPosition(
                    TextPosition(offset: colorController.text.length));
              }
            },
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                String hexColor = colorController.text;
                if (hexColor.length != 7) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("สี HEX ต้องมีอักขระ 6 ตัวหลัง '#'")),
                  );
                } else {
                  try {
                    setState(() {
                      _backgroundColor =
                          Color(int.parse("0xFF" + hexColor.substring(1)));
                    });
                    Navigator.pop(context);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("รูปแบบสี HEX ไม่ถูกต้อง")),
                    );
                  }
                }
              },
              child: Text("เปลี่ยน"),
            ),
          ],
        );
      },
    );
  }

  String _backgroundColorToHex(Color color) {
    return '#${color.value.toRadixString(16).substring(2).toUpperCase()}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สร้างรายการของคุณ"),
        backgroundColor: Color(0xFFF3D082),
        actions: [
          IconButton(
            icon: Icon(Icons.color_lens, color: Color(0xFF3C204B), size: 30),
            onPressed: _changeBackgroundColor,
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Color(0xFF311E1B)), // Custom back button color
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
      ),
      backgroundColor: _backgroundColor,
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          final todo = _todos[index];
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              tileColor: Color(0xFFFCFAF4),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo['text'],
                    style: TextStyle(fontSize: 20, color: Color(0xFF100818)),
                  ),
                  if (todo['subtitle'] != null && todo['subtitle']!.isNotEmpty)
                    Text(
                      todo['subtitle'],
                      style: TextStyle(fontSize: 18, color: Color(0xFF6B6B6B)),
                    ),
                  Text(
                    'โพสต์เมื่อ: ${todo['timestamp']} ', // แสดงเวลาโพสต์
                    style: TextStyle(fontSize: 14, color: Color(0xFF003442)),
                  ),
                  if (todo['editedTimestamp'] != null) SizedBox(height: 4),
                  if (todo['editedTimestamp'] != null)
                    Text(
                      'แก้ไขแล้วเมื่อ: ${todo['editedTimestamp']}',
                      style: TextStyle(fontSize: 14, color: Color(0xFFCC9900)),
                    ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Color(0xFFf1c407), size: 30),
                    onPressed: () {
                      _editTodo(index);
                    },
                  ),
                  IconButton(
                    icon:
                        Icon(Icons.delete, color: Color(0xFFfc0404), size: 30),
                    onPressed: () {
                      setState(() {
                        _todos.removeAt(index);
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        backgroundColor: Color(0xFFB3DDD5),
        child: Icon(Icons.add, color: Color(0xFF141005), size: 30),
      ),
    );
  }
}

class MyGame extends StatefulWidget {
  @override
  _MyGameState createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  late int _randomNumber;
  final TextEditingController _controller = TextEditingController();
  String _message = "";
  int _currentLevel = 1; // ค่าเริ่มต้นอยู่ที่ระดับ 1
  int _maxNumber = 9; // ช่วงเริ่มต้นสำหรับระดับ 1

  @override
  void initState() {
    super.initState();
    _generateRandomNumber();
  }

  void _generateRandomNumber() {
    _randomNumber = _currentLevel == 4
        ? Random().nextInt(10000) // สร้าง 0 ถึง 9999 สำหรับระดับ 4
        : Random().nextInt(_maxNumber) + 1; // สร้างตัวเลขสำหรับระดับอื่น ๆ
  }

  void _checkAnswer() {
    final String userInput = _controller.text;
    final int? userNumber = int.tryParse(userInput);

    if (userNumber == null) {
      setState(() => _message = "กรุณากรอกตัวเลข!");
      return;
    }

    if (_currentLevel == 4 && userInput.length != 4) {
      setState(() => _message = "กรุณากรอกตัวเลข 4 หลัก เช่น 0001 - 9999!");
      return;
    } else if (userNumber < 1 || userNumber > _maxNumber) {
      setState(() => _message = "จำกัดแค่เลข 1 ถึง $_maxNumber!");
      return;
    }

    if (userNumber == _randomNumber) {
      setState(() => _message = "โอ้สุดยอด! คุณเดาถูกแล้ว 🎉");
    } else {
      setState(() => _message =
          "อ๋อ🤭 คุณเดาผิด! คำตอบที่ถูกคือ ${_randomNumber.toString().padLeft(4, '0')}");
    }
  }

  void _resetGame() {
    _controller.clear();
    _generateRandomNumber();
    setState(() => _message = "");
  }

  void _changeLevel(int level) {
    setState(() {
      _currentLevel = level;
      _maxNumber = level == 1
          ? 9
          : level == 2
              ? 6
              : level == 3
                  ? 100
                  : 9999; // จำนวนสูงสุดเฉพาะระดับ
      _resetGame();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "เกมทายตัวเลข!",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF0096F7),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFF311E1B)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: RandomGameBody(
          controller: _controller,
          checkAnswer: _checkAnswer,
          resetGame: _resetGame,
          message: _message,
          currentLevel: _currentLevel,
          changeLevel: _changeLevel,
        ),
      ),
    );
  }
}

class RandomGameBody extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback checkAnswer;
  final VoidCallback resetGame;
  final String message;
  final int currentLevel;
  final Function(int) changeLevel;

  RandomGameBody({
    required this.controller,
    required this.checkAnswer,
    required this.resetGame,
    required this.message,
    required this.currentLevel,
    required this.changeLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "เดาตัวเลข",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          DropdownButton<int>(
            value: currentLevel,
            items: [
              DropdownMenuItem(value: 1, child: Text("Level 1: 1-9")),
              DropdownMenuItem(value: 2, child: Text("Level 2: ลูกเต๋า 1-6")),
              DropdownMenuItem(value: 3, child: Text("Level 3: 1-100")),
              DropdownMenuItem(value: 4, child: Text("Level 4: 0000-9999")),
            ],
            onChanged: (value) {
              if (value != null) changeLevel(value);
            },
          ),
          SizedBox(height: 20),
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "กรอกตัวเลขที่คุณเดาดูสิ",
            ),
          ),
          SizedBox(height: 20),
          Text(
            message,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: resetGame,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1D88FB),
                ),
                child: Text("เริ่มใหม่", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: checkAnswer,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFE1C1B),
                ),
                child: Text("ส่งคำตอบ", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ALists extends StatefulWidget {
  @override
  _AListsState createState() => _AListsState();
}

class _AListsState extends State<ALists> {
  List<Map<String, dynamic>> _todos = [];
  Color backgroundColor = Color(0xffFDFEFF);
  double _gpa = 0.0;

  void _addTodo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String subjectCode = "";
        String subjectName = "";
        String grade = "";

        return AlertDialog(
          backgroundColor: Color(0xffFDFBF5),
          title: Text("เพิ่มวิชาใหม่"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) => subjectCode = value,
                decoration: InputDecoration(hintText: "รหัสวิชา"),
              ),
              TextField(
                onChanged: (value) => subjectName = value,
                decoration: InputDecoration(hintText: "ชื่อวิชา"),
              ),
              TextField(
                onChanged: (value) => grade = value,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "เกรด (0-4)"),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                final double? parsedGrade = double.tryParse(grade);
                if (subjectCode.isNotEmpty &&
                    subjectName.isNotEmpty &&
                    parsedGrade != null &&
                    parsedGrade >= 0 &&
                    parsedGrade <= 4) {
                  setState(() {
                    _todos.add({
                      'code': subjectCode,
                      'name': subjectName,
                      'grade': parsedGrade,
                      'timestamp': DateTime.now().toString(),
                      'editedTimestamp': null,
                    });
                    _calculateGPA();
                  });
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          "กรุณากรอกข้อมูลให้ถูกต้อง (เกรดต้องอยู่ระหว่าง 0-4)"),
                    ),
                  );
                }
              },
              child: Text("เพิ่ม"),
            ),
          ],
        );
      },
    );
  }

  void _editTodo(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String subjectCode = _todos[index]['code'];
        String subjectName = _todos[index]['name'];
        String grade = _todos[index]['grade'].toString();

        return AlertDialog(
          title: Text("แก้ไขรายการ"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) => subjectCode = value,
                controller: TextEditingController(text: subjectCode),
                decoration: InputDecoration(hintText: "รหัสวิชา"),
              ),
              TextField(
                onChanged: (value) => subjectName = value,
                controller: TextEditingController(text: subjectName),
                decoration: InputDecoration(hintText: "ชื่อวิชา"),
              ),
              TextField(
                onChanged: (value) => grade = value,
                controller: TextEditingController(text: grade),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "เกรด (0-4)"),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                final double? parsedGrade = double.tryParse(grade);
                if (parsedGrade != null &&
                    parsedGrade >= 0 &&
                    parsedGrade <= 4) {
                  setState(() {
                    _todos[index] = {
                      'code': subjectCode,
                      'name': subjectName,
                      'grade': parsedGrade,
                      'timestamp': _todos[index]['timestamp'],
                      'editedTimestamp': DateTime.now().toString(),
                    };
                    _calculateGPA();
                  });
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("กรุณากรอกเกรดที่ถูกต้อง (0-4)")),
                  );
                }
              },
              child: Text("บันทึก"),
            ),
          ],
        );
      },
    );
  }

  void _calculateGPA() {
    if (_todos.isNotEmpty) {
      double totalGrades = _todos.fold(0.0, (sum, item) => sum + item['grade']);
      _gpa = totalGrades / _todos.length;
    } else {
      _gpa = 0.0;
    }
  }

  String _getGPACondition() {
    if (_gpa >= 1 && _gpa < 2) return "เกรดเฉลี่ยอยู่ในช่วง 1.00 ถึง 1.99";
    if (_gpa >= 2 && _gpa < 3) return "เกรดเฉลี่ยอยู่ในช่วง 2.00 ถึง 2.99";
    if (_gpa >= 3 && _gpa < 4) return "เกรดเฉลี่ยอยู่ในช่วง 3.00 ถึง 3.99";
    if (_gpa == 4) return "เกรดเฉลี่ยสมบูรณ์ 4.00";
    return "ไม่มีข้อมูลเกรดเฉลี่ย";
  }

  void _Next() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("เลือกหน้าอื่น ๆ"),
          backgroundColor: Color(0xffefeeea),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/page1'),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFFCF8F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    tileColor: Color(0xFFFCFAF4),
                    leading:
                        Icon(Icons.arrow_forward_ios, color: Color(0xFF16130C)),
                    title: Text(
                      'หน้า ตารางงาน',
                      style: TextStyle(
                          color: Color(0xFF191919),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'ไปที่หน้า รายตารางงาน',
                      style: TextStyle(color: Color(0xFF313131)),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/page2'),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFFCF8F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    tileColor: Color(0xFFFCFAF4),
                    leading:
                        Icon(Icons.arrow_forward_ios, color: Color(0xFF16130C)),
                    title: Text(
                      'หน้า รายชื่อวิชาการสอน',
                      style: TextStyle(
                          color: Color(0xFF191919),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'ไปที่หน้า รายชื่อวิชาการสอน',
                      style: TextStyle(color: Color(0xFF313131)),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/page3'),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFFCF8F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    tileColor: Color(0xFFFCFAF4),
                    leading:
                        Icon(Icons.arrow_forward_ios, color: Color(0xFF16130C)),
                    title: Text(
                      'หน้า ชำระวงเงินบัตรเครดิต',
                      style: TextStyle(
                          color: Color(0xFF191919),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'ไปที่หน้า เข้าสู่ระบบ-ลงทะเบียน/ชำระวงเงินบัตรเครดิต',
                      style: TextStyle(color: Color(0xFF313131)),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/page4'),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFFCF8F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    tileColor: Color(0xFFFCFAF4),
                    leading:
                        Icon(Icons.arrow_forward_ios, color: Color(0xFF16130C)),
                    title: Text(
                      'หน้า ลงทะเบียน และ ดูข้อมูลการลงทะเบียน',
                      style: TextStyle(
                          color: Color(0xFF191919),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'ไปที่หน้า ลงทะเบียน และ ดูข้อมูลการลงทะเบียน',
                      style: TextStyle(color: Color(0xFF313131)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffefeeed),
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  "ปิด",
                  style: TextStyle(
                    color: Color(0xffcf2600),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffda2e2e),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xffe6e0e3)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'รายการวิชาและเกรด',
          style: TextStyle(color: Color(0xffe6e0e3)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios,
                color: Color(0xfffdf7df), size: 30),
            onPressed: _Next,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) {
                final item = _todos[index];
                return Card(
                  elevation: 4,
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    title: Text("${item['code']}: ${item['name']}"),
                    tileColor: Color(0xFFFCFAF4),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("เกรด: ${item['grade']}"),
                        Text("โพสต์เมื่อ: ${item['timestamp']}"),
                        if (item['editedTimestamp'] != null)
                          Text("แก้ไขเมื่อ: ${item['editedTimestamp']}"),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit, color: Color(0xfcf0da0b)),
                          onPressed: () => _editTodo(index),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Color(0xffea3427)),
                          onPressed: () {
                            setState(() {
                              _todos.removeAt(index);
                              _calculateGPA();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "เกรดเฉลี่ย: ${_gpa.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  _getGPACondition(),
                  style: TextStyle(fontSize: 16, color: Color(0xffe66a6a)),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        backgroundColor: Color(0xffcf1717),
        child: Icon(Icons.add, color: Color(0xffe6e0e3), size: 30),
      ),
    );
  }
}

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<Map<String, dynamic>> tasks = [];

  void _addTask() {
    setState(() {
      tasks.add({
        'title': '',
        'subtitle': '',
        'date': '1 มกราคม 2024',
        'time': '00:00 - 23:59',
      });
    });
  }

  void _editTask(int index) {
    showDialog(
      context: context,
      builder: (context) {
        final titleController =
            TextEditingController(text: tasks[index]['title']);
        final subtitleController =
            TextEditingController(text: tasks[index]['subtitle']);

        String selectedDate = "1";
        String selectedMonth = "มกราคม";
        String selectedYear = "2024";

        String startHour = "00";
        String startMinute = "00";
        String endHour = "23";
        String endMinute = "59";

        List<String> months = [
          "มกราคม",
          "กุมภาพันธ์",
          "มีนาคม",
          "เมษายน",
          "พฤษภาคม",
          "มิถุนายน",
          "กรกฎาคม",
          "สิงหาคม",
          "กันยายน",
          "ตุลาคม",
          "พฤศจิกายน",
          "ธันวาคม"
        ];
        List<String> years =
            List.generate(10, (index) => (2024 + index).toString());
        List<String> hours =
            List.generate(24, (index) => index.toString().padLeft(2, '0'));
        List<String> minutes =
            List.generate(60, (index) => index.toString().padLeft(2, '0'));

        List<String> getDates(String month, String year) {
          int maxDay = 31;
          if (["เมษายน", "มิถุนายน", "กันยายน", "พฤศจิกายน"].contains(month)) {
            maxDay = 30;
          } else if (month == "กุมภาพันธ์") {
            int yearInt = int.parse(year);
            maxDay = (yearInt % 4 == 0) ? 29 : 28;
          }
          return List.generate(maxDay, (index) => (index + 1).toString());
        }

        return StatefulBuilder(
          builder: (context, setState) {
            List<String> dates = getDates(selectedMonth, selectedYear);

            return AlertDialog(
              title: Text("แก้ไข"),
              backgroundColor: Color(0xffFCFAF4),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      style: TextStyle(color: Color(0xff0f1c41), fontSize: 17),
                      controller: titleController,
                      decoration: InputDecoration(
                        labelText: 'ชื่อเรื่อง',
                        hintText: "ใส่ชื่อเรื่อง",
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      style: TextStyle(color: Color(0xff0f1c41), fontSize: 17),
                      controller: subtitleController,
                      decoration: InputDecoration(
                        labelText: 'รายละเอียด',
                        hintText: "ใส่รายละเอียด",
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 5,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "เลือกวัน/เดือน/ปี",
                      style: TextStyle(color: Color(0xff38233c), fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton<String>(
                          value: selectedDate,
                          items: dates.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedDate = newValue!;
                            });
                          },
                        ),
                        DropdownButton<String>(
                          value: selectedMonth,
                          items: months.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedMonth = newValue!;
                              selectedDate = "1";
                            });
                          },
                        ),
                        DropdownButton<String>(
                          value: selectedYear,
                          items: years.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedYear = newValue!;
                              selectedDate = "1";
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "เลือกเวลา",
                      style: TextStyle(color: Color(0xff38233c), fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton<String>(
                          value: startHour,
                          items: hours.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              startHour = newValue!;
                            });
                          },
                        ),
                        Text(" : "),
                        DropdownButton<String>(
                          value: startMinute,
                          items: minutes.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              startMinute = newValue!;
                            });
                          },
                        ),
                        Text(" - "),
                        DropdownButton<String>(
                          value: endHour,
                          items: hours.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              endHour = newValue!;
                            });
                          },
                        ),
                        Text(" : "),
                        DropdownButton<String>(
                          value: endMinute,
                          items: minutes.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              endMinute = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "อัปเดตล่าสุด: ${DateTime.now()}",
                      style: TextStyle(color: Color(0xff38233c), fontSize: 15),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff0f1c41),
                  ),
                  onPressed: () {
                    setState(() {
                      tasks[index]['title'] = titleController.text;
                      tasks[index]['subtitle'] = subtitleController.text;
                      tasks[index]['date'] =
                          "$selectedDate $selectedMonth $selectedYear";
                      tasks[index]['time'] =
                          "$startHour:$startMinute - $endHour:$endMinute";
                      tasks[index]['updated_at'] = DateTime.now().toString();
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "บันทึก",
                    style: TextStyle(
                      color: Color(0xffE4EDF2),
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFEECB6),
        title: Text(
          'ตารางงาน',
          style: TextStyle(color: Color(0xff070919)),
        ),
      ),
      backgroundColor: Color(0xffF5F8F3),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xff781132),
                  child: Icon(Icons.calendar_month,
                      size: 40, color: Color(0xffe2f0f7)),
                ),
                const Text(
                  'รายการตารางงาน',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2a0638)),
                ),
                const SizedBox(height: 5),
                Text('รายการทั้งหมด ${tasks.length} งาน',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff0c275a))),
              ],
            ),
            Expanded(
              child: Container(
                // decoration: const BoxDecoration(color: Color(0xffe3acb5)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 50),
                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      final task = tasks[index];
                      return ListTile(
                        tileColor: Color(0xFFE4EDF2),
                        title: Text(
                          task['title'],
                          style: TextStyle(
                            color: Color(0xff0f1c41),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "${task['subtitle']}\n${task['date']} | ${task['time']}",
                          style: TextStyle(
                            color: Color(0xff0f1c41),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit, color: Color(0xffF7C46C)),
                              onPressed: () => _editTask(index),
                            ),
                            IconButton(
                              icon:
                                  Icon(Icons.delete, color: Color(0xffea3427)),
                              onPressed: () => _deleteTask(index),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        backgroundColor: Color(0xff435bb5),
        child: Icon(Icons.add, color: Color(0xfffcc00b), size: 30),
      ),
    );
  }
}

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final _formKey = GlobalKey<FormState>();
  String _id = '', _name = '';
  String? selectedDay;

  final List<String> dayList = [
    'จันทร์(เช้า)',
    'อังคาร(เช้า)',
    'พุธ(เช้า)',
    'พฤหัสบดี(เช้า)',
    'ศุกร์(เช้า)',
    'จันทร์(บ่าย)',
    'อังคาร(บ่าย)',
    'พุธ(บ่าย)',
    'พฤหัสบดี(บ่าย)',
    'ศุกร์(บ่าย)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('บันทึกข้อมูลวิชา'),
        backgroundColor: const Color(0xfffdf7df),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Color(0xfff4f4f4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'เพิ่มรายชื่อวิชา',
              style: TextStyle(
                  color: Color(0xffda6030),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // รหัสวิชา
                  TextFormField(
                    maxLength: 7,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      label: Text('รหัสวิชา'),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'กรุณาป้อนรหัสวิชา';
                      }
                      if (value.length != 7) {
                        return 'รหัสวิชาต้องมีความยาว 7 ตัวอักษร';
                      }
                      if (Subject.subjectItems
                          .any((item) => item['id'] == value)) {
                        return 'รหัสวิชานี้ซ้ำ';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _id = value!;
                    },
                  ),
                  const SizedBox(height: 10),

                  // วันที่เรียน
                  DropdownButtonFormField(
                    value: selectedDay,
                    decoration: const InputDecoration(
                      label: Text('วันที่เรียน'),
                      border: OutlineInputBorder(),
                    ),
                    items: dayList.map((day) {
                      return DropdownMenuItem(
                        value: day,
                        child: Text(day),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedDay = value!;
                      });
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'กรุณาเลือกวัน';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  // ชื่อวิชา
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('ชื่อวิชา'),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'กรุณากรอกชื่อวิชา';
                      }
                      if (Subject.subjectItems
                          .any((item) => item['name'] == value)) {
                        return 'ชื่อวิชานี้ซ้ำ';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value!;
                    },
                  ),
                  const SizedBox(height: 20),
                  // ปุ่มบันทึก
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff185ca1),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        var newSubject = {
                          'id': _id,
                          'name': _name,
                          'day': selectedDay!,
                        };
                        setState(() {
                          Subject.subjectItems.add(newSubject);
                          Subject.countItems = Subject.subjectItems.length;
                        });
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      'บันทึก',
                      style: TextStyle(
                        color: Color(0xffE4EDF2),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditScreen extends StatefulWidget {
  final int index; // ค่าคีย์รายการที่ต้องการแก้ไข
  const EditScreen({super.key, required this.index});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final nameController = TextEditingController();
  final idController = TextEditingController();
  String? selectedDay;

  final List<String> dayList = [
    'จันทร์(เช้า)',
    'อังคาร(เช้า)',
    'พุธ(เช้า)',
    'พฤหัสบดี(เช้า)',
    'ศุกร์(เช้า)',
    'จันทร์(บ่าย)',
    'อังคาร(บ่าย)',
    'พุธ(บ่าย)',
    'พฤหัสบดี(บ่าย)',
    'ศุกร์(บ่าย)'
  ];

  @override
  void initState() {
    super.initState();
    final item = Subject.subjectItems[widget.index];
    idController.text = item['id'];
    nameController.text = item['name'];
    selectedDay = item['day'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('แก้ไขข้อมูลวิชา'),
        backgroundColor: const Color(0xffc9d5da),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: const Color(0xfff7f6f2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            // รหัสวิชา
            TextField(
              controller: idController,
              maxLength: 7,
              decoration: const InputDecoration(
                labelText: 'รหัสวิชา',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // วันที่เรียน (Dropdown)
            DropdownButtonFormField(
              value: selectedDay,
              decoration: const InputDecoration(
                labelText: 'วันที่เรียน',
                border: OutlineInputBorder(),
              ),
              items: dayList.map((day) {
                return DropdownMenuItem(
                  value: day,
                  child: Text(day),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDay = value!;
                });
              },
            ),
            const SizedBox(height: 20),

            // ชื่อวิชา
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'ชื่อวิชา',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffa11828),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('ยกเลิก',
                        style: TextStyle(
                          color: Color(0xffFCFCFB),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ))),
                ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff18a14c),
                    ),
                    onPressed: () {
                      final newId = idController.text.trim();
                      final newName = nameController.text.trim();

                      // ตรวจสอบความถูกต้องของข้อมูล
                      if (newId.isEmpty ||
                          newName.isEmpty ||
                          selectedDay == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('กรุณากรอกข้อมูลให้ครบถ้วน')),
                        );
                        return;
                      }
                      if (newId.length != 7) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('รหัสวิชาต้องมี 7 ตัวอักษร')),
                        );
                        return;
                      }
                      if (Subject.subjectItems.any((item) =>
                          item['id'] == newId &&
                          item != Subject.subjectItems[widget.index])) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('รหัสวิชานี้ซ้ำ')),
                        );
                        return;
                      }
                      if (Subject.subjectItems.any((item) =>
                          item['name'] == newName &&
                          item != Subject.subjectItems[widget.index])) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('ชื่อวิชานี้ซ้ำ')),
                        );
                        return;
                      }
                      // บันทึกค่าที่แก้ไข
                      setState(() {
                        Subject.subjectItems[widget.index]['id'] = newId;
                        Subject.subjectItems[widget.index]['name'] = newName;
                        Subject.subjectItems[widget.index]['day'] =
                            selectedDay!;
                        Subject.updateSubjectItems();
                      });

                      Navigator.of(context).pop();
                    },
                    child: const Text('บันทึก',
                        style: TextStyle(
                          color: Color(0xffFCFCFB),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectScreen extends StatefulWidget {
  const SubjectScreen({super.key});

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  @override
  Widget build(BuildContext context) {
    Subject.updateSubjectItems = () {
      setState(() {
        Subject.countItems = Subject.subjectItems.length;
      });
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffede9de),
        title: const Text(
          'รายชื่อวิชาการสอน',
          style: TextStyle(color: Color(0xFF080004)),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF311E1B)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xffe88b48),
                  child: Icon(Icons.calendar_today_rounded,
                      size: 40, color: Color(0xfff4f4f4)),
                ),
                const SizedBox(height: 20),
                const Text(
                  'รายชื่อวิชา',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0c275a)),
                ),
                const SizedBox(height: 5),
                Text('วิชาทั้งหมด ${Subject.countItems} วิชา',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff30312c)))
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Color(0xffe8e5de)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 55),
                  child: subjectList(context),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffda6030),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddScreen()));
          },
          child: const Icon(
            Icons.add,
            size: 30,
            color: Color(0xffeaeaea),
          )),
    );
  }

  Widget subjectList(BuildContext ctx) {
    return ListView.builder(
        itemCount: Subject.countItems,
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              Dismissible(
                  key: Key(Subject.subjectItems[index]['id']),
                  background: Container(
                    //Remove
                    decoration: const BoxDecoration(color: Color(0xffb32020)),
                  ),
                  onDismissed: (direction) {
                    if (direction == DismissDirection.endToStart) {
                      setState(() {
                        Subject.subjectItems.removeAt(index);
                        Subject.countItems = Subject.subjectItems.length;
                      });
                    }
                  },
                  direction: DismissDirection.endToStart,
                  child: subjectTile(index)),
              const Divider(
                color: Color(0xff435bb5),
                indent: 20,
                endIndent: 20,
                height: 1,
              )
            ],
          );
        });
  }

  Widget subjectTile(int index) {
    var name = Subject.subjectItems[index]['name'];
    var day = Subject.subjectItems[index]['day'];

    return ListTile(
      contentPadding: const EdgeInsets.only(left: 60, right: 60),
      title: Text(
        '${index + 1}. $name',
        style: const TextStyle(
            color: Color(0xff221085),
            fontSize: 18,
            fontWeight: FontWeight.w500),
      ),
      trailing: Text(
        day.toString(),
        style: const TextStyle(
            color: Color(0xffdc590e),
            fontSize: 18,
            fontWeight: FontWeight.w500),
      ),
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return EditScreen(index: index);
            });
      },
    );
  }
}

class Subject {
  static List<Map<String, dynamic>> subjectItems = [
    {'id': 'BIT0001', 'name': 'คณิตศาสตร์', 'day': 'จันทร์(เช้า)'},
    {'id': 'BIT0002', 'name': 'วิทยาศาสตร์', 'day': 'อังคาร(เช้า)'},
    {'id': 'BIT0003', 'name': 'ภาษาไทย', 'day': 'พุธ(บ่าย)'},
    {'id': 'BIT0004', 'name': 'ภาษาอังกฤษ', 'day': 'พฤหัสบดี(บ่าย)'},
    {'id': 'BIT0005', 'name': 'สันทนาการ', 'day': 'ศุกร์(เช้า)'},
  ];

  static int countItems = subjectItems.length;
  static Function updateSubjectItems = () {};
  static Function addSubjectItems = () {};
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController =
      TextEditingController(text: ""); // ตั้งค่ารหัสผ่านเริ่มต้น 4678

  String? errorMessageUsername;
  String? errorMessagePassword;

  void _navigateToRegister() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterScreen()),
    );

    if (result != null) {
      setState(() {
        usernameController.text = result['username']; // รับค่า username
        passwordController.text = result['password']; // รับค่า password
      });
    }
  }

  void _validateLogin() {
    setState(() {
      errorMessageUsername =
          usernameController.text.isEmpty ? "❌ ไม่มีข้อมูลผู้ใช้" : null;
      errorMessagePassword =
          passwordController.text.isEmpty ? "❌ ไม่มีข้อมูลรหัสผ่าน" : null;
    });

    if (errorMessageUsername == null && errorMessagePassword == null) {
      Navigator.pushNamed(
        context,
        '/dashboard',
        arguments: usernameController.text, // ส่งค่า username ไป
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5A927F),
        title: const Text('เข้าสู่ระบบ',
            style: TextStyle(color: Color(0xFFF0F5F0))),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xfffbfbfb),
      body: Padding(
        padding: const EdgeInsets.all(20.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: Color(0xff0f3390),
              child: Icon(Icons.account_circle, size: 45, color: Colors.white),
            ),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'ชื่อผู้ใช้งาน:'),
            ),
            if (errorMessageUsername != null)
              Text(
                errorMessageUsername!,
                style: const TextStyle(color: Color(0xffe1180a), fontSize: 16),
              ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'รหัสผ่าน:'),
            ),
            if (errorMessagePassword != null)
              Text(
                errorMessagePassword!,
                style: const TextStyle(color: Color(0xffe1180a), fontSize: 16),
              ),
            const SizedBox(
              height: 20,
              width: 200,
            ),
            ElevatedButton(
              onPressed: _validateLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff6B8068),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                minimumSize:
                    Size(200, 50), // กำหนดความกว้างและความสูงให้ใหญ่ขึ้น
              ),
              child: const Text(
                'เข้าสู่ระบบ',
                style: TextStyle(
                  color: Color(0xffFEFEFD),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 20), // ใช้แค่ height เพราะ width ไม่จำเป็น
            TextButton(
              onPressed: _navigateToRegister,
              style: TextButton.styleFrom(
                // เปลี่ยนเป็น TextButton.styleFrom
                backgroundColor: Color(0xff628B90),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                minimumSize: Size(200, 50), // กำหนดขนาดปุ่ม
              ),
              child: const Text(
                'ลงทะเบียน',
                style: TextStyle(
                  color: Color(0xffFEFEFD),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  String? errorMessageFirstName;
  String? errorMessageLastName;
  String? errorMessageAge;

  void _validateAndRegister() {
    setState(() {
      errorMessageFirstName =
          firstNameController.text.isEmpty ? "กรุณากรอกชื่อ" : null;
      errorMessageLastName =
          lastNameController.text.isEmpty ? "กรุณากรอกนามสกุล" : null;
      errorMessageAge = ageController.text.isEmpty ? "กรุณากรอกอายุ" : null;
    });

    if (errorMessageFirstName == null &&
        errorMessageLastName == null &&
        errorMessageAge == null &&
        usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      //ส่งค่า username และ password กลับไปที่ LoginScreen
      Navigator.pop(context, {
        'username': usernameController.text,
        'password': passwordController.text,
      });
    } else {
      // แสดงแจ้งเตือนเมื่อกรอกข้อมูลไม่ครบ
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('แจ้งเตือน'),
          content: const Text('กรุณากรอกข้อมูลให้ครบถ้วน'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff628B90),
          title: const Text('ลงทะเบียน',
              style: TextStyle(color: Color(0xffFEFEFD))),
          centerTitle: true),
      backgroundColor: const Color(0xfff9fff8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xff6B8068),
                child: Icon(Icons.account_balance_outlined,
                    size: 40, color: Colors.white),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'ชื่อผู้ใช้งาน',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: firstNameController,
                decoration: const InputDecoration(
                  labelText: 'ชื่อ',
                  border: OutlineInputBorder(),
                ),
              ),
              if (errorMessageFirstName != null)
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    errorMessageFirstName!,
                    style:
                        const TextStyle(color: Color(0xffe1180a), fontSize: 16),
                  ),
                ),
              const SizedBox(height: 10),
              TextField(
                controller: lastNameController,
                decoration: const InputDecoration(
                  labelText: 'นามสกุล',
                  border: OutlineInputBorder(),
                ),
              ),
              if (errorMessageLastName != null)
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    errorMessageLastName!,
                    style:
                        const TextStyle(color: Color(0xffe1180a), fontSize: 16),
                  ),
                ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'รหัสผ่าน',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              //Input อายุ (เฉพาะตัวเลข)
              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  labelText: 'อายุ',
                  border: OutlineInputBorder(),
                ),
              ),
              if (errorMessageAge != null)
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    errorMessageAge!,
                    style:
                        const TextStyle(color: Color(0xffe1180a), fontSize: 16),
                  ),
                ),
              const SizedBox(
                height: 20,
                width: 200,
              ),
              ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff628B90),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    minimumSize: Size(60, 50),
                  ),
                  onPressed: _validateAndRegister,
                  child: const Text(
                    'ลงทะเบียน',
                    style: TextStyle(
                      color: Color(0xffFEFEFD),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const SizedBox(
                height: 20,
                width: 200,
              ),
              ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff907962),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    minimumSize: Size(60, 50),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'ปิด',
                    style: TextStyle(
                      color: Color(0xffFEFEFD),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String username = "";
  // รายการธุรกรรมล่าสุด เพิ่ม isHidden
  List<Map<String, dynamic>> _transactions = [
    {
      'icon': Icons.shopping_cart,
      'color': Color(0xffFF6633),
      'title': 'Alexander McQueen at Siam Paragon',
      'date': '5 ก.ย. 2025',
      'amount': -1200,
      'isHidden': false, //ตัวแปรนี้
    },
    {
      'icon': Icons.local_gas_station,
      'color': Color(0xff913225),
      'title': 'เติมน้ำมัน ปั๊มน้ำมันบางจาก(บางจาก - อิสรภาพ)',
      'date': '3 ก.ย. 2025',
      'amount': -800,
      'isHidden': false,
    },
    {
      'icon': Icons.credit_card,
      'color': Color(0xff4D646C),
      'title': 'ชำระค่าบัตร',
      'date': '1 ก.ย. 2025',
      'amount': 5000,
      'isHidden': false,
    },
  ];
  // ฟังก์ชันซ่อนรายการธุรกรรม
  void _hideTransactions() {
    setState(() {
      for (var transaction in _transactions) {
        transaction['isHidden'] = true; // ซ่อนแทนการลบ
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final String username =
        ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'แสดงยอดชำระเงิน',
          style: TextStyle(color: Color(0xfffbfbfb)),
        ),
        backgroundColor: Color(0xff6B8068),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffF9FDFE),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // แสดงชื่อผู้ใช้
            Text(
              'สวัสดี, $username 👋',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // ยอดคงเหลือบัตรเครดิต
            Card(
              color: Color(0xffeeffff),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ยอดคงเหลือบัตรเครดิต',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '฿12,500.00',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xfff62e20),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text('ครบกำหนดชำระ: 25 ก.ย. 2025',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff434440))),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // ปุ่มชำระเงิน (เปลี่ยนจากลบ -> ซ่อน)
            ElevatedButton(
              onPressed: _hideTransactions,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff265dde),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Center(
                child: Text('🔄 ชำระเงินทันที',
                    style: TextStyle(fontSize: 18, color: Color(0xfffeffff))),
              ),
            ),
            const SizedBox(height: 20),
            // รายการธุรกรรมล่าสุด
            const Text('📌 ธุรกรรมล่าสุด',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            // แสดงรายการธุรกรรม
            Expanded(
              child: _transactions.every((t) => t['isHidden'] == true)
                  ? Center(
                      child: Text(
                        'ไม่มีธุรกรรมล่าสุด',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      itemCount: _transactions.length,
                      itemBuilder: (context, index) {
                        var transaction = _transactions[index];

                        // เช็คว่าต้องซ่อนหรือไม่
                        if (transaction['isHidden'] == true) {
                          return SizedBox.shrink(); // ซ่อนแทนการลบ
                        }

                        return Container(
                          color: Color(0xffEBF8FD),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: ListTile(
                            leading: Icon(
                              transaction['icon'] ?? Icons.help,
                              color: transaction['color'] ?? Color(0xff656862),
                            ),
                            title: Text(
                              transaction['title'] ?? 'ไม่พบข้อมูล',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              '฿${transaction['amount'] ?? 0} - ${transaction['date'] ?? 'ไม่ระบุวันที่'}',
                            ),
                            trailing: Text(
                              '${(transaction['amount'] ?? 0) > 0 ? '+' : ''}฿${transaction['amount'] ?? 0}',
                              style: TextStyle(
                                color: (transaction['amount'] ?? 0) > 0
                                    ? Color(0xff5A9769)
                                    : Color(0xffDC1643),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Map<String, dynamic>> _dataList = [];

  final List<Widget> Function(List<Map<String, dynamic>>) _buildPages =
      (dataList) => [
            InputScreen(onSubmit: (data) {
              dataList.add(data);
            }),
            OutputScreen(
              dataList: dataList,
              onDelete: (index) {
                dataList.removeAt(index);
              },
              onEdit: (index, newData) {
                dataList[index] = newData;
              },
            ),
          ];

  @override
  Widget build(BuildContext context) {
    final pages = _buildPages(_dataList);

    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF9F1D35),
        selectedItemColor: Color(0xFFFDFAEF),
        unselectedItemColor: Color(0xFFE5D1E9),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.input),
            label: 'ข้อมูลลงทะเบียน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.output),
            label: 'แสดงข้อมูลลงทะเบียน',
          ),
        ],
      ),
    );
  }
}

class InputScreen extends StatefulWidget {
  final Function(Map<String, dynamic>) onSubmit;

  InputScreen({required this.onSubmit});

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final _formKey = GlobalKey<FormState>();
  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      widget.onSubmit({
        'id': _idController.text,
        'name': _nameController.text,
        'surname': _surnameController.text,
        'email': _emailController.text,
        'timestamp': DateTime.now().toString(), // เพิ่มเวลาโพสต์
      });

      _nameController.clear();
      _surnameController.clear();
      _emailController.clear();
      _idController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('ข้อมูลถูกบันทึกแล้ว')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD9CBCD),
        title: Text(
          'ข้อมูลลงทะเบียน',
          style: TextStyle(
              color: Color(0xff26181A),
              fontSize: 24,
              fontWeight: FontWeight.normal),
        ),
      ),
      backgroundColor: Color(0xffFDFAEF),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _idController,
                decoration: InputDecoration(labelText: 'รหัสประจำตัว'),
                style: TextStyle(
                    color: Color(0xff3B444B),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาป้อนรหัสประจำตัว';
                  }
                  if (int.tryParse(value) == null) {
                    return 'กรุณาป้อนตัวเลข';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'ชื่อ'),
                style: TextStyle(
                    color: Color(0xff3B444B),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาป้อนชื่อ';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _surnameController,
                decoration: InputDecoration(labelText: 'นามสกุล'),
                style: TextStyle(
                    color: Color(0xff3B444B),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาป้อนนามสกุล';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'อีเมล'),
                style: TextStyle(
                    color: Color(0xff3B444B),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาป้อนอีเมล';
                  }
                  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return 'รูปแบบอีเมลไม่ถูกต้อง';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF2BA49),
                ),
                child: Text(
                  "ส่งข้อมูล",
                  style: TextStyle(
                      color: Color(0xff191510),
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OutputScreen extends StatefulWidget {
  final List<Map<String, dynamic>> dataList;
  final Function(int) onDelete;
  final Function(int, Map<String, dynamic>) onEdit;

  OutputScreen({
    required this.dataList,
    required this.onDelete,
    required this.onEdit,
  });

  @override
  _OutputScreenState createState() => _OutputScreenState();
}

class _OutputScreenState extends State<OutputScreen> {
  void _editTodo(int index) {
    final data = widget.dataList[index];
    showDialog(
      context: context,
      builder: (context) {
        final _idController = TextEditingController(text: data['id']);
        final _emailController = TextEditingController(text: data['email']);
        final _nameController = TextEditingController(text: data['name']);
        final _surnameController = TextEditingController(text: data['surname']);

        return AlertDialog(
          title: Text('แก้ไขข้อมูล'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: _idController,
                  decoration: InputDecoration(labelText: 'รหัสประจำตัว')),
              TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'ชื่อ')),
              TextField(
                  controller: _surnameController,
                  decoration: InputDecoration(labelText: 'นามสกุล')),
              TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'อีเมล')),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('ยกเลิก'),
            ),
            TextButton(
              onPressed: () {
                widget.onEdit(index, {
                  'id': _idController.text,
                  'name': _nameController.text,
                  'surname': _surnameController.text,
                  'email': _emailController.text,
                  'timestamp': data['timestamp'], // เก็บค่าเดิม
                  'editedTimestamp':
                      DateTime.now().toString(), // เพิ่มเวลาที่แก้ไข
                });
                Navigator.pop(context);
                setState(() {});
              },
              child: Text('บันทึก'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD9CBCD),
        title: Text(
          'แสดงข้อมูลลงทะเบียน',
          style: TextStyle(
              color: Color(0xff26181A),
              fontSize: 24,
              fontWeight: FontWeight.normal),
        ),
      ),
      backgroundColor: Color(0xFFFDFAEF),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: widget.dataList.length,
        itemBuilder: (context, index) {
          final data = widget.dataList[index];
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              tileColor: Color(0xFFFCFAF4),
              title: Text(
                'รหัสประจำตัว: ${data['id']}',
                style: TextStyle(
                    color: Color(0xff3B444B),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ชื่อ: ${data['name']}',
                    style: TextStyle(
                        color: Color(0xff3B444B),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'นามสกุล: ${data['surname']}',
                    style: TextStyle(
                        color: Color(0xff3B444B),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'อีเมล: ${data['email']}',
                    style: TextStyle(
                        color: Color(0xff3B444B),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'เวลาลงทะเบียน:',
                    style: TextStyle(
                        color: Color(0xff3B444B),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '${data['timestamp']}',
                    style: TextStyle(
                        color: Color(0xff3B444B),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  if (data['editedTimestamp'] != null) ...[
                    SizedBox(height: 8),
                    Text(
                      'เวลาแก้ไขล่าสุด:',
                      style: TextStyle(
                          color: Color(0xff9F283A),
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      '${data['editedTimestamp']}',
                      style: TextStyle(
                          color: Color(0xff9F283A),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Color(0xFFf1c407), size: 25),
                    onPressed: () {
                      _editTodo(index);
                    },
                  ),
                  IconButton(
                    icon:
                        Icon(Icons.delete, color: Color(0xFFfc0404), size: 25),
                    onPressed: () {
                      widget.onDelete(index);
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
