import 'package:flutter/material.dart';

void main() {
  runApp(const RigoMedia());
}
class RigoMedia extends StatelessWidget {
  const RigoMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// Main login screen widget
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                LoginHeader(), // Header section
                SizedBox(height: 32),
                UsernameField(), // Username input field
                SizedBox(height: 16),
                PasswordField(), // Password input field
                SizedBox(height: 16),
                ForgotPassword(), // Forgot Password link
                SizedBox(height: 32),
                LoginButton(), // Login button
                SizedBox(height: 16),
                OtherLoginOption(), // Text for alternative login option
                SizedBox(height: 16),
                OtherLoginButton(), // Alternative login button
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Header widget for the login screen
class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Login',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        Text(
          'Sign in to your account',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

// Widget for the username input field
class UsernameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Username / Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

// Widget for the password input field
class PasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: Icon(Icons
            .visibility_off), // Icon for visibility toggle (static for now)
      ),
    );
  }
}

// Widget for the forgot password link
class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot Password ?',
      style: TextStyle(
        color: Colors.blue,
      ),
      textAlign: TextAlign.right,
    );
  }
}

// Widget for the login button
class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle login action here
      },
      child: Text('Login'),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

// Widget for the alternative login option text
class OtherLoginOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Or login with account',
      style: TextStyle(
        color: Colors.grey,
      ),
      textAlign: TextAlign.center,
    );
  }
}

// Widget for the alternative login button
class OtherLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Handle alternative login method here
      },
      icon: Icon(Icons.login),
      label: Text('Login with Other Account'),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
