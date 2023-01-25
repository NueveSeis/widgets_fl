import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical:10.0),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2( imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/screen-shot-2018-07-11-at-5-06-55-pm-1531343396.png',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://i.guim.co.uk/img/media/cfb3af74aae4b8ad187d9ae625fe44057841bb0f/0_205_5667_3400/master/5667.jpg?width=1200&quality=85&auto=format&fit=max&s=a73c83a36051e3413333780dfc788885',),
          SizedBox(height: 10,),
          CustomCardType2(name: 'Un hermoso paisaje', imageUrl: 'https://static.nationalgeographic.co.uk/files/styles/image_3200/public/mountain-range-appenzell-switzerland_0.jpg?w=1190&h=794',),
          SizedBox(height: 100,),
          
        ],
      ),
    );
  }
}

