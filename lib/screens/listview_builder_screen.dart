import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesIds= [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false; 

   @override
  void initState() {
    super.initState();
    
    scrollController.addListener(() {
      
      //print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');

      if((scrollController.position.pixels >= scrollController.position.maxScrollExtent )){

        fetchData();
      }
    });
  }

  void add5(){
    final lastId = imagesIds.last;
    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e)
    );
    setState(() {});
  }

  Future fetchData() async{
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3 ));
    add5();
    isLoading = false;
    setState(() {});

    if(scrollController.position.pixels +100 <=  scrollController.position.maxScrollExtent ) return;
    scrollController.animateTo(
      scrollController.position.maxScrollExtent + 120, //a donde necesito moverme
      duration: const Duration(milliseconds: 300), //tiempo que va a durar 
      curve: Curves.fastOutSlowIn, //animacion que va a realizar
      );
  }

   Future<void> onRefresh() async{
    await Future.delayed(const Duration(seconds: 2 ));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId +5 );
    add5();
   }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;//saber el tamaño del dispositivo

    return Scaffold(
      body: MediaQuery.removePadding(//widget para borrar paddin donde existe notch
        context: context,
        removeTop: true,//remover paddin del notch
        removeBottom: true,//remover paddin de abajo
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primario,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(), // para que se vea como en ios cuando se hace el scrol y no solo la curvatura.
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit:BoxFit.cover, //para tomar todo el espacio que tiene la imagen.
                    placeholder: const AssetImage('assets/jar-loading.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}'));
                },
              ),
            ),

            if(isLoading)
            Positioned(
              bottom: 40,
              left: size.width * 0.5 - 30,
              
              child: const _loadingIcon()),
          ],
        ),
      ),
    );
  }
}

class _loadingIcon extends StatelessWidget {
  const _loadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primario,
      )

    );
  }
}