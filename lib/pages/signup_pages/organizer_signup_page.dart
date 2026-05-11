import 'package:flutter/material.dart';
import 'package:gatheringapp/components/customLogin_Text_Field.dart';
import 'package:gatheringapp/components/customNote_Widget.dart';

class OrganizerSignupPage extends StatelessWidget {
  List<Map<String, dynamic>> notes = [
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
                    color: theme.onSecondary,
                    borderRadius: BorderRadius.circular(12),
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
