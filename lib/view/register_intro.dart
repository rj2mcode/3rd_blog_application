import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/view/mycast_screen.dart';
import 'package:tech_blog/strings.dart';
import 'package:validators/validators.dart';

class RegisterIntro extends StatelessWidget {
  const RegisterIntro({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.images.robotIcon.path,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: MyStrings.welcomeMessage,
                      style: TextStyle(color: Colors.black, fontSize: 16))),
            ),
            ElevatedButton(
              onPressed: () {
                _showEmailBottomSheet(context, size);
              },
              child: const Text(
                MyStrings.letsGo,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Future<dynamic> _showEmailBottomSheet(BuildContext context, Size size) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: size.height / 3,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    MyStrings.profileInsertYourMail,
                    style: TextStyle(
                        color: Color.fromARGB(255, 71, 71, 71), fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration:
                          const InputDecoration(hintText: "example@mail.com"),
                      onChanged: (value) {
                        isEmail(value);
                      },
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _showActivateWithOtpCodeBottomSheet(context, size);
                      },
                      child: const Text("Continue",
                          style: TextStyle(color: Colors.white)))
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> _showActivateWithOtpCodeBottomSheet(
      BuildContext context, Size size) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: size.height / 3,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    MyStrings.profileInsertYourOTP,
                    style: TextStyle(
                        color: Color.fromARGB(255, 71, 71, 71), fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(hintText: "OTP"),
                      onChanged: (value) {
                        isEmail(value);
                      },
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => MyCasts()));
                      },
                      child: const Text("Continue",
                          style: TextStyle(color: Colors.white)))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
