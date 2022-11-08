import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child:  Text('Login',
          style: TextStyle(color: Colors.white,),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: 
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
        const  SizedBox(
            height: 20,
          ),
        const  Text('Welcome',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
       const   SizedBox(
            height: 20,
          ),
          const Text('Login',style: TextStyle(
            fontWeight: FontWeight.bold,),),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                   elevation: 8.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                           child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  labelText: 'Input email',
                                  prefixIcon: Icon(Icons.email)
                                ),
                                
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  labelText: 'Input password',
                                  prefixIcon: Icon(Icons.lock
                                ),
                              ),
                              obscureText: true,
                              obscuringCharacter: '•',
                              maxLines: 1,
                              maxLength: 8,
                              ),
                             ]
                           ),       
                ),
              ) ,
            ),
SizedBox(
  height: 20,
),
ElevatedButton(
            child: Text('Login'),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold)),
),
// Container( 
//                   height: 200,
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.all(20),
//                   child: ElevatedButton.icon(
//                       onPressed: (){
//                         print("Login");
//                       }, 
//                       icon: Icon(Icons.save),  //icon data for elevated button
//                       label: Text("Elevated Button with Icon"), //label text 
//                       style: ElevatedButton.styleFrom(
//                          primary: Colors.blueAccent //elevated btton background color
//                       ),)),
SizedBox(
  height: 10,
),
Text('Already have an account',
style: TextStyle(
  color: Colors.blue
),),
        ],
      ),
    );
  }
}
