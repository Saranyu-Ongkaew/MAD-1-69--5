// แบบฝึกหัดที่ 4
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ปฏิบัติการบทที่ 5'), // อัปเดต title
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // คอลัมน์หลักสำหรับหน้า
            children: <Widget>[
              const Icon(Icons.account_circle, size: 50, color: Colors.indigo),
              const SizedBox(width: 16), // เว้นวรรคระหว่างไอคอนและข้อความ
              Column(
                // Column สำหรับรายละเอียดข้อความ
                crossAxisAlignment:
                    CrossAxisAlignment.start, // จัดข้อความชิดซ้าย
                mainAxisSize:
                    MainAxisSize.min, // ป้องกันไม่ให้ column ใช้ความสูงเต็ม
                children: const <Widget>[
                  Text(
                    'โปรไฟล์ผู้ใช้',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4), // เว้นวรรคระหว่าง title และ description
                  Text('แก้ไขรายละเอียดโปรไฟล์ของคุณที่นี่'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
