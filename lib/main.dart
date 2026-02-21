import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 24, 23, 25),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            children: [
              Expanded(child: Container(color: Colors.black, height: 57)),
              Expanded(
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Color(0xFFB0D9DD), Color(0xFF90D0FC)],
                      stops: [0.3141, 1.0],
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/arrow.jpg', height: 39, width: 39),
                      Container(
                        width: 288,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 10)),
                            Container(
                              height: 25,
                              width: 25,

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/s.png'),
                                ),
                              ),
                            ),
                            Flexible(
                              child:TextField(
                                
                              controller: _controller,
                              decoration: const InputDecoration(
                                
                                hintText: 'Search or ask a question',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'Inria Sans',
                                ),
                                border: InputBorder
                                    .none, 
                              ),
                            ),
                            ),
                            
                            Image.asset(
                              'assets/images/cam.png',
                              height: 25,
                              width: 25,
                            ),
                            Image.asset(
                              'assets/images/mic.png',
                              height: 25,
                              width: 25,
                              
                            ),
                            SizedBox(width:10),
                          ],
                        ),
                      ),
                      Image.asset('assets/photo.jpg', height: 39, width: 39),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Image.asset('assets/images/photo12.jpg', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
