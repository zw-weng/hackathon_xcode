// import 'package:flutter/material.dart';
// import 'widgets/login_form.dart';
// import 'models/login_model.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   void _login() {
//     if (_formKey.currentState!.validate()) {
//       // Retrieve email and password
//       String email = _emailController.text;
//       String password = _passwordController.text;

//       // Create a LoginModel (could be used in API calls, etc.)
//       final loginData = LoginModel(email: email, password: password);

//       // Example: print or use the login data
//       print('Email: ${loginData.email}, Password: ${loginData.password}');

//       // Navigate to the home page if login is successful
//       Navigator.pushReplacementNamed(context, '/home');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: LoginForm(
//           formKey: _formKey,
//           emailController: _emailController,
//           passwordController: _passwordController,
//           onLogin: _login,
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GestureDetector(
//           onTap: () {
//             // Navigate to RegisterPage
//             Navigator.pushNamed(context, '/register');
//           },
//           child: Text(
//             'Don\'t have an account? Register here!',
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.blue),
//           ),
//         ),
//       ),
//     );
//   }
// }