import 'package:fase5atv/views/Home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Mobilidade',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.deepPurple
                  )
                ),
              ),
              Text('Login:'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  cursorColor: Colors.green,
                ),
              ),
              Text('Senha:'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  cursorColor: Colors.green,
                  obscureText: true,
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ButtonTheme(
                  child: ElevatedButton(
                      onPressed: ()=>{
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>Home())
                        )
                      },
                      child: Text('Submit')
                  )
              )
            ],
        ),
      )
    );
  }
}
