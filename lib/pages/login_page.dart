import 'package:ems/widgets/input_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 25, right: 25),
        color: Colors.white,
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.4,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/login_pg_img.png"))),
              ),
              const Text(
                "Sign-in",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              InputFormField(
                label: "Email Address",
                icon: Icons.email,
              ),
              SizedBox(
                height: 10,
              ),
              InputFormField(
                label: "Password",
                icon: Icons.key,
                obsecureText: true,
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () {},
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: const TextSpan(
                      text: "By signing in you're agreeing to our ",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                      children: <TextSpan>[
                    TextSpan(
                        text: "Terms & Conditions ",
                        style: TextStyle(
                          color: Colors.blue,
                        )),
                    TextSpan(text: "and "),
                    TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(color: Colors.blue))
                  ])),
              SizedBox(height: 25,),
              button("Continue", Colors.blue, Colors.white),
              SizedBox(height: 30,),
              button("Exit", Colors.grey.withOpacity(0.3), Colors.black),
              SizedBox(height: 25,),
              Center(
                child: InkWell(
                  onTap: (){

                  },
                  child: RichText(text: TextSpan(
                    text: "Join Us? ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13
                    ),
                    children: <TextSpan> [
                      TextSpan(
                        text: "Register",
                        style: TextStyle(
                          color: Colors.blue
                        )
                      )
                    ]
                  )),
                ),
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}



Widget button(String text, Color color, Color textColor) {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 12
        ),
      ),
    ),
  );
  
} 
