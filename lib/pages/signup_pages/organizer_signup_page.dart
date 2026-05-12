import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gatheringapp/components/customLogin_Text_Field.dart';
import 'package:gatheringapp/components/customNote_Widget.dart';

class OrganizerSignupPage extends StatefulWidget {
  const OrganizerSignupPage({super.key});

  @override
  State<OrganizerSignupPage> createState() => _OrganizerSignupPageState();
}

class _OrganizerSignupPageState extends State<OrganizerSignupPage> {
  late TapGestureRecognizer _termsRecognizer;

  final List<Map<String, dynamic>> notes = [
    // first notes
    {
      "Icon": Icon(Icons.analytics_outlined),
      "Title": "Advanced Analytics",
      "SubTitle": "Real-time data on attendee engagement and ticket sales.",
    },

    {
      "Icon": Icon(Icons.shield_outlined),
      "Title": "Trusted Platform",
      "SubTitle": "Verified profiles and secure transactional frameworks.",
    },

    {
      "Icon": Icon(Icons.people_alt_outlined),
      "Title": "Audience Reach",
      "SubTitle": "Access to a curated community of professional attendees.",
    },

    {
      "Icon": Icon(Icons.support_agent_outlined),
      "Title": "Dedicated Support",
      "SubTitle": "Priority assistance for all your large-scale event needs.",
    },
  ];

  // controllers

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final homeAddressController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassController = TextEditingController();
  final aboutYouController = TextEditingController();
  bool agreed = false;

  @override
  void initState() {
    super.initState();
    _termsRecognizer = TapGestureRecognizer()
      ..onTap = () {
        // Add term link action here
      };
  }

  @override
  void dispose() {
    _termsRecognizer.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    homeAddressController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmPassController.dispose();
    aboutYouController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.onSecondaryFixed,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: theme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.onSecondaryFixed,
        title: Text("Gathring", style: TextStyle(color: Colors.black)),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // title

                // subtitle

                // notes
                Column(
                  children: notes
                      .map(
                        (note) => CustomNoteWidget(
                          customIcon: note["Icon"],
                          title: note["Title"],
                          subTitle: note["SubTitle"],
                        ),
                      )
                      .toList(),
                ),

                // Form
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color.fromARGB(255, 28, 94, 31),
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 16,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),

                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      // title of from
                      ListTile(
                        title: Text(
                          "Organizer Application",
                          style: TextStyle(
                            color: theme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Tell us about your organization and the impact of your events.",
                        ),
                      ),
                      Form(
                        child: Column(
                          children: [
                            CustomloginTextField(
                              hintText: "First Name",
                              obscureText: false,
                              controller: firstnameController,
                            ),
                            SizedBox(height: 10),

                            CustomloginTextField(
                              hintText: "Last Name",
                              obscureText: false,
                              controller: lastnameController,
                            ),
                            SizedBox(height: 5),

                            CustomloginTextField(
                              hintText: "Email",
                              obscureText: false,
                              controller: emailController,
                            ),
                            SizedBox(height: 5),
                            CustomloginTextField(
                              hintText: "Phone Number",
                              obscureText: false,
                              controller: phoneController,
                            ),
                            SizedBox(height: 5),
                            CustomloginTextField(
                              hintText: "Username",
                              obscureText: false,
                              controller: usernameController,
                            ),
                            SizedBox(height: 5),
                            CustomloginTextField(
                              hintText: "Password",
                              obscureText: true,
                              controller: passwordController,
                            ),
                            SizedBox(height: 5),
                            CustomloginTextField(
                              hintText: "Confirm Password",
                              obscureText: true,
                              controller: confirmPassController,
                            ),
                            SizedBox(height: 5),
                            CustomloginTextField(
                              hintText: "About Your Organization",
                              obscureText: false,
                              controller: aboutYouController,
                              helperText: "Max 250 letters",
                              maxLength: 250,
                              maxLines: 5,
                            ),
                            SizedBox(height: 16),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  agreed = !agreed;
                                });
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Icon(
                                      agreed
                                          ? Icons.radio_button_checked
                                          : Icons.radio_button_unchecked,
                                      color: agreed ? theme.primary : theme.onSurface,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                        children: [
                                          TextSpan(text: 'I agree to the '),
                                          TextSpan(
                                            text: 'Organizer Terms of Service',
                                            style: TextStyle(
                                              color: theme.primary,
                                              decoration: TextDecoration.underline,
                                            ),
                                            recognizer: _termsRecognizer,
                                          ),
                                          TextSpan(text: ' and have reviewed the Partner Guidelines'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 18),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: theme.primary,
                                  foregroundColor: Colors.white,
                                  disabledBackgroundColor: theme.primary.withOpacity(0.5),
                                  disabledForegroundColor: Colors.white70,
                                ),
                                onPressed: agreed ? () {
                                  // Submit application action
                                } : null,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                                  child: Text(
                                    "Submit Application",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
