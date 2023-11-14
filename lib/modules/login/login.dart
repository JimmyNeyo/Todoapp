import 'package:flutter/material.dart';
import 'package:todo/shared/components/components.dart';

var emailctrl = TextEditingController();

var passctrl = TextEditingController();

var namectrl = TextEditingController();

var formkey = GlobalKey<FormState>();

bool ispassshow = false;

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To do app ",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[800],
        elevation: 50,
        leading: const Icon(Icons.account_box),
        actions: [
          IconButton(
              onPressed: () {
                // ignore: avoid_print
                print('n');
              },
              icon: const Icon(Icons.adb)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  myTFF(
                    controller: emailctrl,
                    type: TextInputType.emailAddress,
                    label: 'Email address',
                    valida: (value) {
                      if (value!.isEmpty) {
                        return 'Email should be not empty';
                      }
                      return null;
                    },
                    prefix: Icons.email,
                  ),
                  const SizedBox(height: 40),
                  myTFF(
                    controller: passctrl,
                    label: 'Enter password',
                    prefix: Icons.lock,
                    suffix:  ispassshow ? Icons.visibility_off : Icons.visibility ,
                  
                    type: TextInputType.visiblePassword,
                    ispassword: ispassshow,
                    suffixpressd: () {
                      setState(() {
                        ispassshow = !ispassshow;
                      });
                    },
                    valida: (value) {
                      if (value!.isEmpty) {
                        return 'pass should be not empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 40),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Nemo',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.category)),
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.name,
                    controller: namectrl,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'name should be not empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 40),
                  myButton(
                    fun: () {
                      if (formkey.currentState!.validate()) {
                        print(emailctrl.text);
                        print(passctrl.text);
                        print(namectrl.text);
                      }
                      return null;
                    },
                    text: 'login',
                    isuppercase: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account ?'),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Register Now',
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
