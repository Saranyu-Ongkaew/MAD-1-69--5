// แบบฝึกหัดที่ 1
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('แบบฝึกหัดที่ 1')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // ปรับเปลี่ยนค่าตามโจทย์ข้อ 1-7:
            // 1. MainAxisAlignment.start        (ชิดซ้าย)
            // 2. MainAxisAlignment.end          (ชิดขวา)
            // 3. MainAxisAlignment.center       (ตรงกลาง)
            // 4. MainAxisAlignment.spaceBetween (กระจายติดขอบ)
            // 5. MainAxisAlignment.spaceAround  (กระจายแบบมีขอบครึ่งนึง)
            // 6. MainAxisAlignment.spaceEvenly  (กระจายเท่ากันทุกช่อง)
            // 7. MainAxisAlignment.start        (รีเซ็ตกลับชิดซ้าย)
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Icon(Icons.home, size: 40.0, color: Colors.blue),
              Icon(Icons.search, size: 40.0, color: Colors.green),
              Icon(Icons.person, size: 40.0, color: Colors.orange),
            ],
          ),
        ),
      ),
    );
  }
}