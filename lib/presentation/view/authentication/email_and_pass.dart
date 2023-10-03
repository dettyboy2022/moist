import 'package:flutter/material.dart';

class EmailandPass extends StatefulWidget {
  const EmailandPass({super.key});

  @override
  State<EmailandPass> createState() => _EmailandPassState();
}

class _EmailandPassState extends State<EmailandPass> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formfield,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
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
          TextField(
            obscureText: passToggle,
            controller: passwordController,
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
          ),
          const Text('Use 8+ characters'),
        ],
      ),
    );
  }
}
