import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

int currentpage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//Scaffold lienzo grande de trabajo del tamaño de la pantalla
        appBar: AppBar(title: Text('Family App $currentpage'), //Barra Superior 
        backgroundColor:Colors.black,
      ),

//cambiar pantalla mediante pageview

 body: PageView(
children: [
  CustomScreen(color: Colors.green),
    CustomScreen(color: Colors.orange),
      CustomScreen(color: Colors.pink),
],
 ),// Realizar cambios de pagina, este nos pide siempre una lista de Childrens (Widgets)
      
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: currentpage,
        onTap: (index){
          currentpage=index;

          setState(() {
            
          });
        },
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.red.withOpacity(0.5),
        
        items: [
           BottomNavigationBarItem(
              label: 'configuración',
              icon: Container(
                child: Icon(Icons.settings,
                  size: 20.0,
          ),
              ),
           ),
          BottomNavigationBarItem(
            icon: Icon( Icons.message ),
          label: 'Mensajes'),
      ],
      ) ,
      );
  }
}

class CustomScreen extends StatelessWidget {
  @override

final Color color;

  const CustomScreen({required this.color}); //constructor de la variable

  Widget build(BuildContext context) {
    return Container(
      color: color, //toma la variable
      child: Center(//Centar el contenido de su hijo
        
        child: Text('Custom Screen'),
        
      ),
    ) ;
  }
}