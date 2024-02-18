import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmet Gaffaroğlu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: GoogleFonts.aBeeZee.toString(),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 53, 60, 64)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 60, 64),
        title: const Text(
          'Ahmet Gaffaroğlu',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          width < 600
              ? PopupMenuButton(
                  color: Colors.blue,
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: TextButton(
                        style: const ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(Colors.red)),
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: 'Çok yakında!',
                              gravity: ToastGravity.TOP_RIGHT);
                        },
                        child: const Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: TextButton(
                        style: const ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(Colors.red)),
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: 'Çok yakında!',
                              gravity: ToastGravity.TOP_RIGHT);
                        },
                        child: const Text(
                          'About',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: TextButton(
                        style: const ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(Colors.red)),
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: 'Çok yakında!',
                              gravity: ToastGravity.TOP_RIGHT);
                        },
                        child: const Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    TextButton(
                      style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.red)),
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: 'Çok yakında!',
                            gravity: ToastGravity.TOP_RIGHT);
                      },
                      child: const Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.red)),
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: 'Çok yakında!',
                            gravity: ToastGravity.TOP_RIGHT);
                      },
                      child: const Text(
                        'About',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.red)),
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: 'Çok yakında!',
                            gravity: ToastGravity.TOP_RIGHT);
                      },
                      child: const Text(
                        'Contact',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 20)
                  ],
                )
        ],
      ),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: height * 0.9,
                child: Image.asset(
                  'assets/images/top.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  left: 30,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmet Gaffaroğlu',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: width > 500 ? 40 : 25),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          'Eğitim hayatını Mersin Üniversitesi Elektrik Elektronik Mühendisliği bölümünde tamamlayan Ahmet kariyer hayatının ilk 3 yılında elektronik mühendisi olarak çalıştı. Ardından yazılım sektörüne geçiş yapan Ahmet 3 yıl Etiya şirketinde kurumsal hayatı deneyimledikten sonra diğer ortakları ile birlikte Eylül 2022\'de kendi şirketini kurmaya karar verdi. 1 yıldan fazladır WittyCar, GametoGame ve Kartek Yazılım şirketlerinde kurucu ortaklık ve CTO olarak çalışmalarına devam etmektedir.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: width > 500 ? 20 : 14),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 53, 60, 64),
              child: Center(
                child: Text(
                  '2023 Ahmet Gaffaroğlu Copyright / Powered By Kartek Yazılım',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: width > 500 ? 15 : 12),
                ),
              ))
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
