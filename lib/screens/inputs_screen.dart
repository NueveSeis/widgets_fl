import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();//Se necesita una kay para los valores de los componentes
    final Map<String, String> formValues = {//para obtener los valores

      'first_name' : 'Kevin',
      'last_name'  : 'Ivan',
      'email'      : 'geeseskevin@gmail.com',
      'password'   : 'silona.',
      'role'       : 'Admin',

    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:  [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', tipoText: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value:'Admin',
                      child:Text('Admin'),),
                    DropdownMenuItem(
                      value:'SuperUser',
                      child:Text('SuperUser'),),
                    DropdownMenuItem(
                      value:'Developer',
                      child:Text('Developer'),),
                    DropdownMenuItem(
                      value:'Jr. Developer',
                      child:Text('Jr. Developer'),),
                  

                ], 
                onChanged: (value){
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                  

                }),
          
                ElevatedButton(
                  onPressed: () {

                    FocusScope.of(context).requestFocus(FocusNode());//Esconder teclado

                    if(! myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                    }

                    //imprimir valores del map
                    print(formValues);
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                      ),
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

