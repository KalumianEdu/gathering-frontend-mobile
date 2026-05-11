import 'package:flutter/material.dart';
import 'package:gatheringapp/components/customLogin_Text_Field.dart';
import 'package:gatheringapp/pages/signup_pages/organizer_signup_page.dart';
import 'package:gatheringapp/pages/signup_pages/user_signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => Login();
}

class Login extends State<LoginPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  bool isChecked = false;

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.8;
    final height = MediaQuery.of(context).size.height * 0.08;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSecondaryFixed,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo Part
                Row(
                  children: [
                    // Icon
                    Icon(
                      Icons.people_alt_outlined,
                      size: 40,
                      color: Color(0xFF4a7c59),
                    ),
                    SizedBox(width: 10),
                    // App Name
                    Text(
                      "Gathering",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4a7c59),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),

                // Welcome Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Text(
                      "Sign in to manage your events and community bookings.",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 76, 80, 78),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),

                SizedBox(height: 40),

                // Sign in With Google button and Apple Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Google Button
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

                    // Apple Button
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

                // the divider with "or" in the middle "OR WITH EMAIL"
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 10,
                      ),
                    ),
                    Text(
                      "OR WITH EMAIL",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),

                // Email and Password Text Fields
                Form(
                  child: Column(
                    children: [
                      // Email Text Field
                      CustomloginTextField(
                        hintText: "Email",
                        obscureText: false,
                        controller: emailController,
                      ),

                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4a7c59),
                          ),
                        ),
                      ),
                      // Password Text Field
                      CustomloginTextField(
                        hintText: "Password",
                        obscureText: true,
                        controller: passController,
                      ),
                    ],
                  ),
                ),

                // Remember Me Checkbox and Sign in Button
                Row(
                  children: [
                    Checkbox(
                      splashRadius: 10,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      fillColor: WidgetStateProperty.resolveWith((states) {
                        if (states.contains(WidgetState.selected)) {
                          return Theme.of(
                            context,
                          ).colorScheme.surface; // checked
                        }

                        return Theme.of(
                          context,
                        ).colorScheme.surface; // unchecked
                      }),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),

                    Text("Remember Me", style: TextStyle(color: Colors.black)),
                  ],
                ),
                // Sign in Button
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF4a7c59),
                      minimumSize: Size(width, height * 0.75),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: height * 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        // Title
                                        Text(
                                          "Welcome to Gathering",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),

                                        Container(
                                          padding: EdgeInsets.all(5),
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Join our organic platform to start exploring sustainable spaces or hosting your own green events.",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),

                                        // User Sign up Button
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    UserSignupPage(),
                                              ),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFf1ece4),
                                            minimumSize: Size(
                                              width * 0.95,
                                              height * 0.95,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.people_alt_outlined,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Text(
                                                  "Join as a User",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(5),
                                                  child: Text(
                                                    "Perfect for individuals looking to discover unique venues, book cozy rooms, and attend local organic events.",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                            255,
                                                            121,
                                                            117,
                                                            117,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: 20),

                                        // Organizer Sign up Button
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    OrganizerSignupPage(),
                                              ),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFf1ece4),
                                            minimumSize: Size(
                                              width * 0.95,
                                              height * 0.95,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.people_alt_outlined,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Text(
                                                  "Join as an Organizer",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(5),
                                                  child: Text(
                                                    "Ideal for hosts managing sustainable spaces, planning workshops, or coordinating local community gatherings.",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                            255,
                                                            121,
                                                            117,
                                                            117,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xFF4a7c59),
                            fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
