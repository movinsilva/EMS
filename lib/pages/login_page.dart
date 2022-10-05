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
        padding: const EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
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
            const SizedBox(height: 10,),
            InputFormField(label: "Email Address", icon: Icons.email,),
            SizedBox(height: 10,),
            InputFormField(label: "Password", icon: Icons.key, obsecureText: true,),
            InkWell(
              onTap: (){

              },
              child: Text(
                "Forgot Password ?"
              ),
            )
          ],
        ),
      ),
    );
  }
}
