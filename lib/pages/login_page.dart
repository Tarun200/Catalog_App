import 'package:flutter/material.dart';
import 'package:cataloug_app/utils/routes.dart';
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool change = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        change = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,15,0,0),
                            child: Image.asset("assets/Login.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                              "Welcome to Tech Street $name",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                            child: Column(
                              children: [

                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Username",
                                hintText: "Enter the Username",
                              ),
                              onChanged: (value)
                              {
                                name = value;
                                setState(() {});
                              },
                              validator: (value)
                                {
                                  if(value == null || value.isEmpty)
                                    {
                                      return "Username cannot be empty";
                                    }
                                  return null;

                                }

                            ),

                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                                hintText: "Enter the Password",
                              ),
                              validator: (value)
                              {
                                if(value == null || value.isEmpty)
                                  {
                                    return "Password cannot be empty";
                                  }
                                else if(value.length<6)
                                  {
                                    return "Password length shoul be greater than 6 characters";
                                  }
                                else if(value.length>15)
                                  {
                                    return "Password length should be less than 15 characters";
                                  }
                                return null;

                              }
                            ),
                            SizedBox(
                              height: 40,
                            ),

                            Material(
                              borderRadius: BorderRadius.circular(change ? 60 : 8),
                              color: Colors.deepPurple,
                              child: InkWell(
                                onTap: () => moveToHome(context),
                                child: AnimatedContainer(
                                  duration: Duration(seconds: 1),
                                  width: change ? 50 : 150,
                                  height: 50,
                                  alignment: Alignment.center,

                                  child: change
                                      ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                  : Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                              ],
                            ),
                          ),
             ],
          ),
        ),
      ),



    );
  }
}
