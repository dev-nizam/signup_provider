
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController EmailController =TextEditingController();
  TextEditingController PasswordController =TextEditingController();
  TextEditingController UsernameController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Divider(
                height: 40,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.network("https://www.onlinelogomaker.com/blog/wp-content/uploads/2017/06/shopping-online.jpg"),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                child: Text("SignUp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              Container(
                height: 240,
                width: 350,
                child: Column(
                  children: [
                    TextField(
                      controller: UsernameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Fullname",
                          suffixIcon:Icon(Icons.edit),
                          labelText: "Fullname"
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: EmailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email",
                          suffixIcon:Icon(Icons.email),
                          labelText: "Email"
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: PasswordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password",
                          suffixIcon:Icon(Icons.lock),
                          labelText: "Password"
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){}, child: Text("SignUp")
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                              "Already have an account?"
                          ),
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      },
                        child: Text(
                          " Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),
                        ),)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
