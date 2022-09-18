import 'package:flutter/material.dart';
import 'package:lab_mngt_project/login.dart';
import 'package:google_fonts/google_fonts.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  _registrationState createState() => _registrationState();
}
class _registrationState extends State<registration> {

  final formKey = GlobalKey<FormState>();
  final items=['item1','item2','item3','item4','item5'];
  late String value="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text('Registration Page'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 32, 0, 20),
              child: Image.asset("assets/images/register.png",
                fit: BoxFit.cover,
                // width: 150,
              ),
            ),
            Text('Create an account', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
             Center(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 40),
                  child: Form(
                    key: formKey,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'First Name',

                              icon: Icon(Icons.person, color: Colors.deepPurple)
                            // icon: Icons.person,
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Lastname',
                              icon: Icon(Icons.person, color: Colors.deepPurple)
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              icon: Icon(Icons.email, color: Colors.deepPurple)
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Mobile Number',
                              icon: Icon(Icons.keyboard, color: Colors.deepPurple)
                          ),
                          keyboardType: TextInputType.number,
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Column(
                          children: [
                            Center(
                              child: DropdownButton<String>(
                                // value: value,
                                isExpanded: true,
                                onChanged: (_value){
                                  setState((){
                                    value=_value!;
                                  });
                                },
                                hint: Text('Select semester'),
                                items: [
                                  DropdownMenuItem<String>(

                                    value: 'sem 1',
                                    child: Center(
                                      child: Text('Sem 1'),
                                    ),
                                  ),DropdownMenuItem<String>(
                                    value: 'Sem 2',
                                    child: Center(
                                      child: Text('Sem 2'),
                                    ),
                                  ),DropdownMenuItem<String>(
                                    value: 'Sem 3',
                                    child: Center(
                                      child: Text('Sem 3'),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Sem 4',
                                    child: Center(
                                      child: Text('Sem 4'),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Sem 5',
                                    child: Center(
                                      child: Text('Sem 5'),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Sem 6',
                                    child: Center(
                                      child: Text('Sem 6'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Already have an account?   "),
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const login()),
                                );
                              },
                              child: Text('login',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.indigoAccent
                                ),
                              ),
                            )
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        ElevatedButton(
                            onPressed: (){

                            },
                            child: Text('Register'))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
