import 'package:flutter/material.dart';

import '../components/registerImage.dart';
import '../components/reusableButton.dart';
import '../components/reusableTextfield.dart';
import 'package:far7etna/service/httpservice.dart';

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

  final TextEditingController _usernameController = TextEditingController();

  bool _isSeller = false;
  final Authservice _authService = Authservice();

  void _signUp() async {
    String email = _emailController.text.trim();
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();
    UserRole role = _isSeller ? UserRole.seller : UserRole.client;

    Map<String, dynamic> result = await _authService.signUp(
      email: email,
      username: username,
      password: password,
      role: role,
    );

    if (result['success']) {
      // Registration successful, show success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(result['message'])),
      );
      // Navigate to login screen or other appropriate screen
      Navigator.pop(context);
    } else {
      // Registration failed, show error message
      String message = result['message'];
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

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
                        false, _usernameController),
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
                    firebaseButton(
                      context, 'Sign Up', _signUp,
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
                    ),
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
