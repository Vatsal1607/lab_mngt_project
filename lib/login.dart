import 'package:flutter/material.dart';
import 'package:lab_mngt_project/registration.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset("assets/images/hey.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Welcome',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Username cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value){
                          // name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password cannot be empty";
                          }
                          else if(value.length < 6){
                            return "Password length should be atleast 6";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Don't have an account?   "),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const registration()),
                              );
                            },
                            child: Text('Register',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      ElevatedButton(onPressed: (){
                        // Navigator.pushNamed(context, MyRoutes.homeRoute);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const registration()),
                        );
                      }, child: Text('Login'),
                      style: TextButton.styleFrom(minimumSize: Size(130, 40)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
