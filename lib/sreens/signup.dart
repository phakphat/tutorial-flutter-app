// signup.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerFullName = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sign Up',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.blueAccent,
          ),
          foregroundColor: Colors.white,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
                      Container(
            height: 120.0,
            width: 140.0,
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
            ),
            child: Center(
              child: Image.asset('assets/images/12.png'),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15,0,15,0),
            margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(221, 226, 233, 0.922),  
              borderRadius: BorderRadius.circular(10.0), 
            ),
            child:  TextField(
              controller: controllerFullName,
              decoration: const InputDecoration(
                labelText: "Full Name",
                border: InputBorder.none,
                labelStyle: TextStyle(
                )
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15,0,15,0),
            margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(221, 226, 233, 0.922),  
              borderRadius: BorderRadius.circular(10.0), 
            ),
            child:  TextField(
              controller: controllerEmail,
              decoration: const InputDecoration(
                labelText: "Email Address",
                border: InputBorder.none,
                labelStyle: TextStyle(
                )
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15,0,15,0),
            margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(221, 226, 233, 0.922),  
              borderRadius: BorderRadius.circular(10.0), 
            ),
            child:  TextField(
              controller: controllerPassword,
              decoration:  const InputDecoration(
                labelText: "Password",
                border: InputBorder.none,
                labelStyle: TextStyle(
                )
              ),
            ),
          ),
          Container(
            height: 56,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                'CREATE ACCOUNT',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                String strName = controllerFullName.text;
                String strEmail = controllerEmail.text;
                String strPwd = controllerPassword.text;
                //print("User Name : ${strName}");
                //print("Password  : ${strPwd}");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("User Name : ${strName}\nEmail Addess  : ${strEmail}\nPassword   : ${strPwd}"),)
                );
              },
            ),
          ),
          Container(
            height: 56,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child:  TextButton(
                 onPressed: () {
                  // Navigator.push(
                  //     context, 
                  //     MaterialPageRoute(builder: (context) => const LoginUser()), 
                  //   );
                 },
                child: const Text(
                  'Already have account?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              )
          ),
          	const Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 30), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Divider(
                  color: Color.fromARGB(255, 4, 4, 4), 
                  thickness: 1.0, 
                  indent: 20.0, 
                  endIndent: 10.0, 
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.0), 
                child: Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Color.fromARGB(255, 4, 4, 4), 
                  thickness: 1.0,
                  indent: 10.0, 
                  endIndent: 20.0, 
                ),
              ),
            ],
          ),
        ),
                  Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    // height: 20.0,
                    width: 30.0,
                    padding: const EdgeInsets.all(0), 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/gg.jpg'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 0, 0), 
                    child: Container(
                      width: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Center(
                        child: Image.asset('assets/images/fb.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0), 
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Login with Facebook',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}



