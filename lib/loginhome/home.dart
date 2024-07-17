import 'package:flutter/material.dart';
import 'package:app/components/login_form.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 12, 109, 121),
              Color.fromARGB(255, 68, 208, 227),
              Color.fromARGB(255, 111, 202, 214),
              Color.fromARGB(255, 97, 219, 235),
              Color.fromARGB(255, 180, 218, 223),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Center(
                    child: Image.asset('assets/2311.png'),
                  ),
                )),
            Expanded(
                flex: 5,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80),
                              topRight: Radius.circular(80)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 20, 135, 150)
                                  .withOpacity(0.3),
                              Color.fromARGB(255, 131, 206, 216),
                              Color.fromARGB(255, 156, 209, 216),
                              Color.fromARGB(255, 190, 208, 210),
                              Color.fromARGB(255, 219, 235, 237),
                            ],
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 23, right: 20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80),
                            topRight: Radius.circular(80)),
                        color: Color.fromARGB(255, 211, 242, 240),
                      ),
                      child: loginform(),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
