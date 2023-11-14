import 'package:flutter/material.dart';

var emailctrl = TextEditingController();

var passctrl = TextEditingController();
var namectrl = TextEditingController();


class login_screen extends StatelessWidget {
  const login_screen({super.key});

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
                TextFormField(
                  controller: emailctrl,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: passctrl,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Enter password',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      prefixIcon: Icon(Icons.lock)),
                ),
                const SizedBox(height: 40),
                   TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nemo',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.category)
                  ),
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  keyboardType: TextInputType.name,
                  controller: namectrl ,             
               ),
               
                Container(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        15.0), // Set the border radius here
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: const Text(
                        'login',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
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
    );
  }
}
