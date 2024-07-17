import 'package:app/components/square_title.dart';
import 'package:flutter/material.dart';
import 'package:app/components/text_field_and_title.dart';


class loginform extends StatefulWidget {
  const loginform({super.key});

  @override
  State<loginform> createState() => _loginformState();
}

class _loginformState extends State<loginform> {
  bool isHidePassword = true;
  bool isCheckboxEnable = false;
  bool isKeyboardVisible = false;
  final GlobalKey<FormState> keyform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
    
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Form(
              key: keyform,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  textfieldandtitle(
                    title: 'Username',
                    hitext: 'Enter User ID or Email',
                    validator: (value) {
                      RegExp regExp = RegExp(
                          r'^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$');
                      if (value?.isEmpty ?? true) {
                        return 'User name is required';
                      } else if (value!.length < 8) {
                        return 'password must have at least 8 char';
                      } else if (!regExp.hasMatch(value)) {
                        return ' Username is weak';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: textfieldandtitle(
                        helpertext:
                            'password must have at least one uppercase latter , one lowercase char, one number and one spacial char ',
                        title: 'Password',
                        hitext: 'Enter Password',
                        validator: (value) {
                          RegExp regExp = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                          if (value?.isEmpty ?? true) {
                            return 'Password is required';
                          } else if (value!.length < 8) {
                            return 'Password must have at least 8 char';
                          } else if (!regExp.hasMatch(value)) {
                            return ' Password is weak';
                          }
                          return null;
                        },
                        isShowpassword: isHidePassword,
                         suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isHidePassword = !isHidePassword;
                            });
                          },
                          icon: Icon(
                            isHidePassword
                                ? Icons.visibility:Icons.visibility_off,
                            color: isHidePassword
                                ? const Color.fromARGB(255, 47, 87, 93)
                                : Colors.red,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const  Text(
                            "Forgot Password",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 34, 137, 137)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (keyform.currentState!.validate()) {
                        print('login done');
                      }
                    },
                    
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                  // fillColor: MaterialStateColor.resolveWith(
                                  //   (states) => Color.fromARGB(255, 236, 239, 239)),
                                  value: isCheckboxEnable,
                                  onChanged: (value) {
                                    setState(() {
                                      isCheckboxEnable = value ?? false;
                                    });
                                  }),
                              Text(
                                'Remember Me',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 28, 94, 103)),
                              )
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                    topLeft: Radius.circular(25))),
                            child: Center(
                                child: Text(
                              "Sign-In",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 78, 150, 150),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Or continue With',
                            style:
                                TextStyle(color: Color.fromARGB(255, 25, 88, 97)),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 78, 150, 150),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SquareTitle(imagePath: 'assets/github.png'),
                       SizedBox(width: 15),
              
                      SquareTitle(imagePath: 'assets/gmail.png'),
                         SizedBox(width: 15),
                      SquareTitle(imagePath: 'assets/linkedin.jpg') ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    height: 50,
                    child: Row(
                    
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Not a member ?',style: TextStyle(color: Colors.grey[700]),),
                        const SizedBox(width: 6),
                        Text('Register now',style: TextStyle(color:Colors.lightBlue,fontWeight:FontWeight.bold ),),
                       ],
                      ),
                  )
                    
                ],
               
              ),
            ),
          ),
        ),
      ),
    );
  }
}
