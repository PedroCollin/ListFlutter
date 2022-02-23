import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app))
        ],
        title: Text('Home'), backgroundColor: Colors.black,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(

          backgroundColor: Colors.black,
          onPressed: ()=>Navigator.pushNamed(context, '/cadastro'),
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home, size: 25, color: Colors.white,),),
              IconButton(onPressed: (){}, icon: Icon(Icons.star, size: 25, color: Colors.white,),),
              SizedBox(width: 15,),
              IconButton(onPressed: (){}, icon: Icon(Icons.save, size: 25, color: Colors.white,),),
              IconButton(
                onPressed: ()=>Navigator.pushNamed(context, '/lista'),
                icon: Icon(Icons.person, size: 25, color: Colors.white,),),
            ],
          ),
        ),
      ),
    );
  }
}
