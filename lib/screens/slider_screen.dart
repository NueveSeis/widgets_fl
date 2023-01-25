import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
  double _sliderValue = 100; 
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
         children: [
          Slider.adaptive( // adaptive para que dependiendo de la plataforma se cambie el diseño
            min: 50,
            max: 400,
            value: _sliderValue, 
            activeColor: AppTheme.primario,
            divisions: 10, //divisones donde se pueden anclar
            onChanged: _sliderEnable ? 
            (values){
              _sliderValue = values; //asignando el valor que se toma de mi values del slider a la variable y se pueda mover
              setState(() {}); //para que se redibuje el slider
            }
            :null
            ),

            Checkbox(
              value: _sliderEnable,
               onChanged:(value) {
                 _sliderEnable = value ?? true; //si no recibimos algun valor por defecto que sea true
                setState(() {});
              },),

            Switch(
              value: _sliderEnable, 
              onChanged: (value) => setState(() {_sliderEnable = value;})),

            CheckboxListTile(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primario,
              value: _sliderEnable, 
              onChanged: (value) => setState(() {_sliderEnable = value ?? true;})),

            SwitchListTile.adaptive(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primario,
              value: _sliderEnable, 
              onChanged: (value) => setState(() {_sliderEnable = value ?? true;})),

            const AboutListTile(),

            
              
      
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: NetworkImage('https://plantillasdememes.com/img/plantillas/unos-pedillos41644105266.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
      
           
         ],
      ),
    );
  }
}