import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class registerUser extends StatefulWidget {
  const registerUser({super.key});

  @override
  State<registerUser> createState() => _registerUserState();
}

class _registerUserState extends State<registerUser> {
  //Logica del programa
  final _formKey =
      GlobalKey<FormState>(); //Variable para validar en el formulario
  final TextEditingController _correo = TextEditingController();
  final TextEditingController _password = TextEditingController();

  //Metodo para guardar los datos en shared preferences
  Future<void> _guardarUsuario(String correo, String password) async {
    final varPreference = await SharedPreferences
        .getInstance(); //Obtener una instancia de SP para almacenar datos
    await varPreference.setString('userCorreo', correo);
    await varPreference.setString('userPassword', password);
    //Mostrar mensaje de validacion despues de guardar
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Datos guardados exitosamente')));
  }

  //Funcion me va a permitir registrar el usuario
  void _registerUser() {
    if (_formKey.currentState!.validate()) {
      //todos del formulario sean validos
      _guardarUsuario(_correo.text,
          _password.text); //viene los controler _correo y _password
      print('Usuario guardado en SharedPreferences');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
              child: Column(
            children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/2521/2521826.png',
                height: 200,
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _correo,
                decoration: InputDecoration(
                  labelText: 'Correo',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email no valido..';
                  }
                  return null; //Si no hay error en el ingreso del correo
                },
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Confirme  su Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                  onPressed: () {
                    _registerUser();
                  },
                  child: Text(
                    'Registrarse..',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[300],
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
