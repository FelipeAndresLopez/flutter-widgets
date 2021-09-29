import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _cardTipo1(),
          SizedBox(height: 1.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
              'Soy un subtitulo de esta tarjeta que muestra más detalles',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Ok'),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        shadowColor: Colors.red,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            FadeInImage(
              height: 300.0,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 200),
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                'https://www.pandotrip.com/wp-content/uploads/2016/07/li-Photo-by-Santo.jpg',
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('No tengo ni idea que escribir aquí'),
            )
          ],
        ));
  }
}
