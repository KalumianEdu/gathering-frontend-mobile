import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// components
import 'package:gatheringapp/components/customLogin_Text_Field.dart';

class UserSignupPage extends StatefulWidget {
  const UserSignupPage({super.key});

  @override
  State<UserSignupPage> createState() => _UserSignupPage();
}

class _UserSignupPage extends State<UserSignupPage> {
  // Controllers
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  bool isChecked = false;

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: Theme.of(context).colorScheme.primary,
        ),
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        title: Text(
          "Gathering",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // Title of Create Account
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Create your Account",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),

              // subtitle of Create Account
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  "Start your journey with the Gathering community today.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),

              SizedBox(height: 20),

              // sign up with google button and ios button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onSecondary,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/logo/google_logo.png",
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Google",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // ios button
                  Container(
                    width: 150,
                    height: 50,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onSecondary,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/logo/apple_logo.png",
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Apple",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // or divider "OR CONTINUE WITH EMAIL"
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.onSecondary,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "OR CONTINUE WITH EMAIL",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.onSecondary,
                      thickness: 1,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              //Form SECTION
              Form(
                child: Column(
                  children: [
                    // First name field
                    CustomloginTextField(
                      controller: firstNameController,
                      onChanged: (val) {},
                      hintText: "First Name",
                      obscureText: false,
                    ),

                    SizedBox(height: 10),

                    // Last name field
                    CustomloginTextField(
                      controller: lastNameController,
                      onChanged: (val) {},
                      hintText: "Last Name",
                      obscureText: false,
                    ),

                    SizedBox(height: 10),

                    // email field
                    CustomloginTextField(
                      hintText: "Email",
                      obscureText: false,
                      controller: emailController,
                    ),

                    SizedBox(height: 10),

                    // password field
                    CustomloginTextField(
                      hintText: "Password",
                      obscureText: false,
                      controller: passController,
                      helperText: "Must be at least 8 characters long.",
                    ),

                    // confirm password field
                  ],
                ),
              ),

              // agree to terms and conditions
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (val) {
                      setState(() {
                        isChecked = val ?? true;
                      });
                    },

                    side: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimary,

                      width: 1,
                    ),
                    fillColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return Theme.of(context).colorScheme.surface; // checked
                      }

                      return Theme.of(context).colorScheme.surface; // unchecked
                    }),
                    activeColor: Theme.of(context).colorScheme.surface,
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimary,
                        width: 1,
                      ),
                    ),
                  ),

                  // terms and conditions text
                  Text(
                    "I agree to the Terms and Conditions",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),

              // sign up button
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: isChecked
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSecondary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // already have an account? sign in
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 15,
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
