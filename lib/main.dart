import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("금호동3가", style: TextStyle(color: Colors.white),),
          actions: [ 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.bar_chart),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.home),
            ),
          ] ,
        ),

        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/KakaoTalk_20240216_015701309.png",
                width: 100,
                height: 120,
                fit: BoxFit.cover
                ),
            ),
              SizedBox(width: 10,), // 이미지 옆 여백주기

              Expanded(
               child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('캐논 DSLR 100D (단렌즈, 충전기 16기가 SD 포함)',
                    style: TextStyle(fontSize: 18),),
                    Text('금호동3가', style: TextStyle(color: Colors.grey),),
                    Text('7000원', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text("4")
                      ],
                    )
                  ],
                ),
              )
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 50,
          child: Container(
            child: (
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.book)
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}
