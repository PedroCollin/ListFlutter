import 'package:flutter/material.dart';



class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  List dados = [];

  void mostraDados(){
    Map<String, dynamic> map = Map();
    for(int i = 0; i <10; i++ ){
      map['titulo'] = 'Nome do Time';
      map['subtitulo'] = 'Pobres';
      dados.add(map);
    }

  }

  @override
  Widget build(BuildContext context) {
    dados = [];
    mostraDados();
    return Scaffold(

      appBar: AppBar(title: Text('Lista da Série B'),
        backgroundColor: Colors.black,
      ),

      body: ListView.builder(
          itemCount: dados.length,
          itemBuilder: (context,indice){
          return Card(
            child: ListTile(
              leading: Icon(Icons.star, size: 30, color: Colors.black,),
              onTap: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Row(children: [
                      Icon(Icons.warning),
                      Text(' BANIR'),
                    ],),
                    titlePadding: EdgeInsets.all(30),
                    content: Text('Deseja realmente banir o ${dados[indice]}'),
                    contentPadding: EdgeInsets.all(30),
                    actions: [
                      TextButton(onPressed: ()=>Navigator.pop(context), child: Text('Sim')),
                      TextButton(onPressed: ()=>Navigator.pop(context), child: Text('Não')),
                    ],
                  );
                });
              },
              title: Text('${dados[indice]['titulo']}'),
              subtitle: Text('Situação ${dados[indice]['subtitulo']}'),
            ),
          );
      }),
    );
  }
}
