import 'package:auth/user_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Auth());
}

class Auth extends StatelessWidget {
  const Auth({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  String name = 'Bankole Ocean';

  String password = 'october';

  bool selected = false;

  var title;

  var code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4DB6AC),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Welcome back',
                style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 40)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Login to your account',
              style: GoogleFonts.abhayaLibre(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 20)),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 350,
                width: 350,
                decoration: const BoxDecoration(color: Color(0xffE0F2F1)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextField(
                        onChanged: (value) => title = value,
                        decoration: const InputDecoration(
                            hintText: 'Codename',
                            prefixIcon: Icon(Icons.person),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xffFFC400)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextField(
                        onChanged: (value) => code = value,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (title == name && code == password) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const User()),
                                );
                          }
                          else {print('not working');}
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent),
                        child: const Text('Login'))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Center(
              child: Container(
                height: 500,
                width: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/wolfgang.jpg'))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
