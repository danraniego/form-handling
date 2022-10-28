import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Handling'),
      ),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: "Name",
                labelText: "Name"
              ),
              validator: (value) {
                return (value == '') ? 'Please enter name' : null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  hintText: "Email Address",
                  labelText: "Email Address"
              ),
              validator: (value) {
                if (value == '') {
                  return 'Please enter email address';
                } else {
                  return (!EmailValidator.validate(value!))
                      ? 'Invalid Email Address' : null;
                }
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.name,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Password",
                  labelText: "Password"
              ),
              validator: (value) {
                return (value == '') ? 'Please enter email address' : null;
              },
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    var isFormValid = formKey.currentState!.validate();
                    if (isFormValid) {
                      print('Yehey all inputs are valid');
                    }
                  },
                  child: const Text('Submit')
              ),
            )
          ],
        ),
      ),
    );
  }
}
