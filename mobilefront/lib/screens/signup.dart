import 'package:flutter/material.dart';

import '../components/registerImage.dart';
import '../components/reusableButton.dart';
import '../components/reusableTextfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();
  final TextEditingController _ownercodecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final firebaseUser = context.watch<User?>();
    // final currentUser = FirebaseAuth.instance.currentUser?.displayName;

    return Stack(
      children: [
        RegisterImage(),
        SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "Sign Up",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField('Enter Username', Icons.person_outline,
                        false, _userNameTextController),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField(
                        'Enter Email',
                        Icons.alternate_email_outlined,
                        false,
                        _emailController),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField('Enter Password', Icons.lock_outline,
                        true, _passwordController),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField('Enter Owner Code (Owners Only)',
                        Icons.local_cafe_outlined, false, _ownercodecontroller),
                    const SizedBox(
                      height: 20,
                    ),
                    firebaseButton(context, 'Sign Up', () async {
                      // if (_emailController.text.isEmpty ||
                      //     _passwordController.text.isEmpty) {
                      //   ScaffoldMessenger.of(context).showSnackBar(snack);
                      //   return;
                      // }
                      // context.read<AuthenticationService>().signUp(
                      //     email: _emailController.text,
                      //     password: _passwordController.text);
                      // //ADD USER TO FIRESTORE
                      // if (_ownercodecontroller.text.isEmpty) {
                      //   DatabaseService().addUser(
                      //       userName: _userNameTextController.text,
                      //       email: _emailController.text);
                      //   FirebaseAuth.instance.currentUser
                      //       ?.updateDisplayName(_userNameTextController.text)
                      //       .then((value) {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: ((context) => HomeScreen()),
                      //       ),
                      //     );
                      //   }).then((value) {
                      //     print(FirebaseAuth.instance.currentUser?.displayName);
                      //   }).onError((error, stackTrace) {
                      //     print("Error ${error.toString()}");
                      //   });
                      // } else {
                      //   DatabaseService().addOwner(
                      //       userName: _userNameTextController.text,
                      //       email: _emailController.text,
                      //       ownerCode: _ownercodecontroller.text);
                      //   FirebaseAuth.instance.currentUser
                      //       ?.updateDisplayName(_userNameTextController.text)
                      //       .then((value) {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: ((context) => SettingsScreen()),
                      //       ),
                      //     );
                      //   }).then((value) {
                      //     print(FirebaseAuth.instance.currentUser?.displayName);
                      //   }).onError((error, stackTrace) {
                      //     print("Error ${error.toString()}");
                      //   });
                      // }
                    }),
                  ],
                ),
              ),
            ),
          ),
        ))
      ],
    );
  }

  final snack = SnackBar(
    content: const Text('Please enter your credentials!'),
    backgroundColor: Colors.red,
    action: SnackBarAction(
      label: 'dismiss',
      onPressed: () {
        return;
      },
    ),
  );
}
