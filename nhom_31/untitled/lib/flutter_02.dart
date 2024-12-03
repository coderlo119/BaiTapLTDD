import 'package:flutter/material.dart';

// Trang thứ nhất
class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang 1'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('../assets/images/01.png',
              width: 500,
              height: 500,
              fit: BoxFit.cover,
            ),
            Text('Đây là trang 1',
              style: TextStyle(fontSize: 50),),
            SizedBox(height: 25,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> SecondPage()),
                  );
                },
                child: Text('Đi đến trang 2')),
          ],
        ),
      ),
    );
  }
}

// Trang thứ hai
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang 2'),
        // Nút back sẽ tự động xuất hiện và gọi Navigator.pop khi được nhấn
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('../assets/images/02.png',
              width: 500,
              height: 500,
              fit: BoxFit.cover,
            ),
            Text(
              'Đây là trang 2',
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 20),
            // Nút để quay lại trang 1
            ElevatedButton(
              onPressed: () {
                // Sử dụng Navigator.pop để quay lại trang trước
                Navigator.pop(context);
              },
              child: Text('Quay lại trang 1'),
            ),
            SizedBox(height: 20),
            // Nút để đi đến trang 3
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                );
              },
              child: Text('Đi đến trang 3'),
            ),
          ],
        ),
      ),
    );
  }
}

// Trang thứ ba
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('../assets/images/03.png',
              width: 500,
              height: 500,
              fit: BoxFit.cover,
            ),
            Text(
              'Đây là trang 3',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            // Nút để quay lại trang trước
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Quay lại trang 2'),
            ),
            SizedBox(height: 20),
            // Nút để quay về trang đầu tiên
            ElevatedButton(
              onPressed: () {
                // Xóa tất cả các trang trong stack và quay về trang đầu
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                      (route) => false,
                );
              },
              child: Text('Về trang đầu'),
            ),
          ],
        ),
      ),
    );
  }
}