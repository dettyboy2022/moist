import 'package:flutter/material.dart';

class EmailandPass extends StatefulWidget {
  const EmailandPass({super.key});

  @override
  State<EmailandPass> createState() => _EmailandPassState();
}

class _EmailandPassState extends State<EmailandPass> {
  bool passToggle = true;
  var passKey = GlobalKey<FormState>();
  var emailKey = GlobalKey<FormState>();

  bool validate() {
    return passKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        Form(
          key: emailKey,
          autovalidateMode: AutovalidateMode.always,
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
            validator: (value) {
              bool emailRegex =
                  RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                      .hasMatch(value!);
              if (value.isEmpty) {
                return 'Enter Email';
              }

              if (!emailRegex) {
                return "Enter a Valid Email";
              }
              return null;
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Username',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Password',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        Form(
          key: passKey,
          autovalidateMode: AutovalidateMode.always,
          child: TextFormField(
            obscureText: passToggle,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      passToggle = !passToggle;
                    });
                  },
                  child: Icon(
                      passToggle ? Icons.visibility : Icons.visibility_off),
                )),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter a valid password';
              }
              bool passwordRegex = RegExp(
                      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
                  .hasMatch(value);
              if (!passwordRegex) {
                return "Enter a Valid Password";
              }
              return null;
            },
          ),
        ),
        const Text('Use 8+ characters'),
      ],
    );
  }
}
