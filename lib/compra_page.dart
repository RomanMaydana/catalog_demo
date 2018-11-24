import 'package:cakes_catalog/cake.dart';
import 'package:cakes_catalog/list_item.dart';
import 'package:flutter/material.dart';

final pruebaSnapshot = [
  {
    "imagen": "http://tartadegalletas.es/img/tarta-de-galletas-218.jpg",
    "nombre": "Tarta de Galleta",
    "origen": "Belgica",
    "precio": "12"
  },
  {
    "imagen":
        "https://s-media-cache-ak0.pinimg.com/originals/63/b1/ef/63b1ef3b55fa466f891d55eba06313ee.png",
    "nombre": "Queque maicena",
    "origen": "Perú",
    "precio": "8"
  },
  {
    "imagen":
        "https://escueladetartas.com/wp-content/uploads/2018/01/Tartas-de-letras-decoradas-9.png",
    "nombre": "Torta de Letras",
    "origen": "USA",
    "precio": "12"
  },
  {
    "imagen":
        "http://com.postmates.img.prod.s3.amazonaws.com/a2c594e1-9d42-4f30-adc6-402145244a88/orig.jpg",
    "nombre": "Mounlin Rose",
    "origen": "Francia",
    "precio": "15"
  },
  {
    "imagen":
        "https://cdn.shopify.com/s/files/1/0642/6881/products/LemonBreezeCakeSlice2_600x.jpg?v=1434667707",
    "nombre": "Lemon Breeze",
    "origen": "Europa",
    "precio": "13"
  },
  {
    "imagen":
        "https://www.reviewjournal.com/wp-content/uploads/2015/03/web1_panevino-vegan_4.jpg",
    "nombre": "Dining Pick",
    "origen": "Suecia",
    "precio": "15"
  },
  {
    "imagen":
        "https://escueladetartas.com/wp-content/uploads/2018/01/Tartas-de-letras-decoradas-9.png",
    "nombre": "Torta de Letras",
    "origen": "USA",
    "precio": "12"
  },
  {
    "imagen":
        "http://com.postmates.img.prod.s3.amazonaws.com/a2c594e1-9d42-4f30-adc6-402145244a88/orig.jpg",
    "nombre": "Mounlin Rose",
    "origen": "Francia",
    "precio": "15"
  },
  {
    "imagen":
        "https://cdn.shopify.com/s/files/1/0642/6881/products/LemonBreezeCakeSlice2_600x.jpg?v=1434667707",
    "nombre": "Lemon Breeze",
    "origen": "Europa",
    "precio": "13"
  },
  {
    "imagen":
        "https://www.reviewjournal.com/wp-content/uploads/2015/03/web1_panevino-vegan_4.jpg",
    "nombre": "Dining Pick",
    "origen": "Suecia",
    "precio": "15"
  },
];

class CompraPage extends StatefulWidget {
  @override
  _CompraPageState createState() => _CompraPageState();
}

class _CompraPageState extends State<CompraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pasteles Disponibles',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return _buildList(context, pruebaSnapshot);
  }

  Widget _buildList(BuildContext context, List<Map> snapshot) {
    return GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: EdgeInsets.only(top: 20.0),
        children:
            snapshot.map((data) => _buildListItem(context, data)).toList());
  }

  Widget _buildListItem(BuildContext context, Map data) {
    final cake = Cake.fromMap(data);
    return ListItem(
      nombre: cake.nombre,
      imagen: cake.imagen,
      origen: cake.origen,
      precio: cake.precio,
      reference: cake.reference,
    );
  }
}
