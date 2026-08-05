import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp()); // บอกให้ Flutter รันวิดเจ็ต MyApp ของเรา
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // ใช้ const หาก home เป็น const
      debugShowCheckedModeBanner: true, // ทางเลือก: ซ่อน debug banner
      home: MyHomePage(), // ใช้ const หาก MyHomePage สามารถเป็น const ได้
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ปฏิบัติการบทที่ 4'), // อัปเดต title
        backgroundColor: Colors.teal,
      ),
      body: Padding( // Padding รอบเนื้อหาหลัก
        padding: const EdgeInsets.all(16.0),
        child: Column( // Column เลย์เอาต์หลัก
          crossAxisAlignment: CrossAxisAlignment.center, // จัดกึ่งกลางไอเท็มแนวนอนใน column
          children: <Widget>[
            // Network Image
            Image.network(
              'https://picsum.photos/seed/flutter/400/200',
              height: 150,
              fit: BoxFit.contain,
              loadingBuilder: (context, child, progress) {
                // แสดง indicator ขณะโหลด
                return progress == null
                    ? child
                    : const Center(heightFactor: 3, child: CircularProgressIndicator()); // เพิ่ม heightFactor เพื่อการจัดกลางที่ดีขึ้น
              },
              errorBuilder: (context, error, stackTrace) {
                // แสดงข้อความข้อผิดพลาดหากรูปภาพล้มเหลว
                return const Center(heightFactor: 3, child: Text('ไม่สามารถโหลดรูปภาพได้', style: TextStyle(color: Colors.red)));
              },
            ),
            const SizedBox(height: 20), // ตัวเว้นวรรค

            // Asset Image
            Image.asset(
              'assets\images\Screenshot 2026-08-05 101210.png', // ตรวจสอบว่าพาธนี้ถูกต้องและประกาศใน pubspec.yaml
              height: 100,
              errorBuilder: (context, error, stackTrace) {
                // แสดงข้อความข้อผิดพลาดหาก asset ล้มเหลว
                return const Text('เกิดข้อผิดพลาดในการโหลด asset', style: TextStyle(color: Colors.red));
              },
            ),
            const SizedBox(height: 20), // ตัวเว้นวรรค

            // Container พร้อม Text ที่ใช้ Google Fonts
            Container(
              width: 300.0,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text( // ใช้ Google Fonts
                'สวัสดี วิดเจ็ต Flutter!',
                textAlign: TextAlign.center,
                style: GoogleFonts.prompt( // ใช้ฟอนต์ Prompt
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 30), // ตัวเว้นวรรค

            // แถวของ Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // จัดกึ่งกลางปุ่มในแถว
              children: <Widget>[
                ElevatedButton(
                  onPressed: () { print('กดปุ่ม Elevated'); },
                  child: const Text('Elevated'),
                ),
                const SizedBox(width: 10), // เว้นวรรคระหว่างปุ่ม
                OutlinedButton(
                  onPressed: () { print('กดปุ่ม Outlined'); },
                  child: const Text('Outlined'),
                ),
                const SizedBox(width: 10), // เว้นวรรคระหว่างปุ่ม
                TextButton(
                  onPressed: () { print('กดปุ่ม Text'); },
                  child: const Text('Text'),
                ),
              ],
            ),
            const SizedBox(height: 10), // ตัวเว้นวรรค

            // IconButton
            IconButton(
              onPressed: () { print('กดไอคอน Info'); },
              icon: const Icon(Icons.info_outline),
              iconSize: 30,
              tooltip: 'ข้อมูล', // ข้อความช่วยเหลือ
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}