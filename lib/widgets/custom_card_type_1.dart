

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/Material.dart';



class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const  ListTile(
            title: Text('SoY UN TITULO'),
            subtitle: Text('Laborum proident ipsum amet commodo officia proident adipisicing duis laborum aliquip adipisicing. In ipsum pariatur laborum velit sunt sunt anim reprehenderit fugiat consectetur id aliquip nostrud. Qui aliquip do velit labore mollit. '),
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primario,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text('cancel'),

                ),
                TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text('ok'),

                ),
              ],
            ),
          ),
        ],
      ) ,
      );
  }
}