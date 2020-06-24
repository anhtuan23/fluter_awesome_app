import 'package:awesome_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/bg.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: SignInForm(
                      formKey: formKey,
                      usernameController: _usernameController,
                      passwordController: _passwordController),
                ),
              ),
            ),
          ],
        ));
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key key,
    @required this.formKey,
    @required TextEditingController usernameController,
    @required TextEditingController passwordController,
  })  : _usernameController = usernameController,
        _passwordController = passwordController,
        super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController _usernameController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter email',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter password',
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                  Navigator.pushNamed(context, HomePage.routeName);
                },
                color: Colors.cyan,
                child: Text("Sign in"),
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
