import 'package:flutter/material.dart';
import 'package:flutter_form_login/sreens/signup.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
   TextEditingController controllerUsername = TextEditingController();
   TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
      //padding: const EdgeInsets.all(15),
      child: ListView(
        children: <Widget>[
                    Container(
            height: 120.0,
            width: 140.0,
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
              controller: controllerUsername,
              decoration: const InputDecoration(
                labelText: "Phone number, email or username",
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
              decoration: const InputDecoration(
                labelText: 'Password',
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
                'LOGIN',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                String strName = controllerUsername.text;
                String strPwd = controllerPassword.text;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("User Name : ${strName}\nPassword   : ${strPwd}"),)
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Forgot your login details',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black45,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Get help',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              )
            ],
          ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 30), 
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
              Container(
                color: const Color.fromARGB(255, 255, 255, 255), 
                child: const Divider(
                  color: Color.fromARGB(255, 34, 34, 34), 
                  thickness: 1, 
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Does's have account?",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black45,
                ),
              ),
              TextButton(
                 onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const SignUpScreen()), // Navigate to the Signup screen
                    );
                  },
                child: const Text(
                  'Create new account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
