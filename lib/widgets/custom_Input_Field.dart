import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? tipoText;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues; 

  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.tipoText, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      autofocus: false,//activa el teclado automaticamente
      initialValue: '',
      textCapitalization: TextCapitalization.words, //Activar o desactivar mayusculas en cada palabra,sentencia letra,parafo
      keyboardType: tipoText,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value, //asigno el valor que esta leyendo a la propiedad
      validator:(value) {
        if(value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo 3 letras': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,      
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 letras', para saber cuantos caracteres me quedan.
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        // prefixIcon: Icon(Icons.verified_user),
        icon: icon == null ? null : Icon(icon),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10)
        //   ),
        // ),

      ),
    );
  }
}