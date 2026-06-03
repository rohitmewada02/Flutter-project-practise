import 'package:flutter/material.dart';
import 'package:myapp/utils/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = " ";
  bool changebutton = false;
  
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'WELCOME $name',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username", labelText: "username"),
                        onChanged: (value) {
                             name = value;
                             setState(() {
                               
                             });
                        },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter password", labelText: "password"),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),

                  InkWell(
                    onTap: () async {
                      setState((){
                        changebutton = true;
                      });

                      await Future.delayed(Duration(seconds: 2));
                      Navigator.pushNamed(context, MyRoutes.loginn);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changebutton ? 50 : 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:changebutton? Color.fromARGB(255, 184, 176, 207) : Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                        
                       ),
                      child: changebutton 
                             ?const Icon(
                              Icons.done,
                              color: Colors.white,
                             )
                             :
                      const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )



                  // ElevatedButton(
                  //   style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                  //   onPressed: () {
                  //     print("hello rohit");
                  //     Navigator.pushNamed(context, MyRoutes.loginn);
                  //   },
                  //   child: const Text("Login"),
                  // )
                ],
              ),
            ),
          ],
        )));
  }
}
