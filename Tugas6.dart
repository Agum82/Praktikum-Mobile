import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
void login(){
  if (_formKey.currentState!.validate()){
    String username = usernameController.text;
    ScaffoldMessenger.of(context,).showSnackBar(SnackBar(content: Text("Login berhasil: $username")));
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Login"),),
      body: Padding(padding: const EdgeInsets.all(16),
      child: Form(key: _formKey,
      child: Column(
        children: [TextFormField(
          controller: usernameController,
          decoration: const InputDecoration(
            labelText: "username",
            border: OutlineInputBorder(),
          ),
          validator: (value){
            if (value == null || value.isEmpty){
              return "username Wajib Diisi";
            }
            return null;
          },

        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: login, 
          child: const Text("simpan")
        
         ),
        
      ],

      ),),
      
      ),
    );
  }
  
}
