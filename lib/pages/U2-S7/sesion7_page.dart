import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/pages/U2-S7/widgets/template.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class Sesion7Page extends StatefulWidget {
  const Sesion7Page({super.key});

  @override
  State<Sesion7Page> createState() => _Sesion7PageState();
}

class _Sesion7PageState extends State<Sesion7Page> {
  late Controller controller;

  // Simulation of API
  final List<dynamic> data = [
    {
      'img':
          'https://images.unsplash.com/photo-1442327243508-7a95f66f2290?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'title': 'Arequipa: El Cañón del Colca',
      'content':
          'Arequipa es una de las ciudades más hermosas del Perú y la segunda más poblada, posee hermosas construcciones coloniales, como iglesias, templos, monasterios y casonas de la época de la conquista.'
    },
    {
      'img':
          'https://images.unsplash.com/photo-1526392060635-9d6019884377?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'title': 'Cusco: Machu Picchu',
      'content':
          'Cusco es sin duda uno de los destinos más importantes del país y del mundo, un destino que ofrece a sus visitantes un rico legado histórico y monumenta.'
    },
    {
      'img':
          'https://images.unsplash.com/photo-1591081658714-f576fb7ea3ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
      'title': 'Iquitos: El Río Amazonas',
      'content':
          'Iquitos es el destino ideal para los amantes del turismo, la naturaleza y la aventura, ofrece al turista infinidad de opciones, podrá navegar por el río Amazonas y sus afluentes, realizar expediciones a lo profundo de la selva con base en lodges ubicados en plena selva.'
    },
    {
      'img':
          'https://i2.wp.com/adventuretravelperu.com/es/wp-content/uploads/2021/07/ica-lineas-nazca-tuismo-peru-travel-4.jpg?w=1024&ssl=1',
      'title': ' Nazca: Las Lineas de Nazca',
      'content':
          'Este destino es único en el mundo porque está lleno de misterio y misticismo, Nazca se encuentra ubicada en la región centro-sur del Perú, entre sus atracciones más importantes podemos destacar las famosas Líneas de Nazca, enigmático enclave arqueológico ubicado a 450 kilómetros al sur de Lima, donde se puede apreciar enormes figuras geométrica.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2016/01/13/17/48/machupicchu-1138641_960_720.jpg',
      'title': 'MACHU PICCHU (PERÚ)',
      'content':
          'El Machu Picchu fue construido como propiedad del emperador inca Pachacuti (1438-1472). A menudo denominada erróneamente como la "Ciudad Perdida de los Incas" y es todo un icono familiar de la civilización Inca. Fue declarado Santuario Histórico del Perú en 1981 y Patrimonio de la Humanidad por la UNESCO en 1983.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2016/11/09/01/01/christ-1809774_960_720.jpg',
      'title': 'Paracas: Las Islas Ballestas',
      'content':
          'Paracas se encuentra a orillas del Océano Pacífico, es un destino ecológico donde podemos encontrar la Reserva Nacional de Paracas y las Islas Ballestas donde podrás apreciar desde muy cerca una gran variedad de criaturas marina'
    },
    {
      'img':
          'https://images.unsplash.com/photo-1553550765-41e7dff2bd41?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'title': 'Puno:Lago Titicaca',
      'content':
          'Puno es la tercera ciudad peruana que recibe el mayor flujo de turistas extranjeros después de Cusco y Lima, se encuentra en las alturas de los Andes a orillas del Titicaca, el lago navegable más alto del mundo y el más grande en Sudamérica.'
    }
  ];
  Controller? testingController;

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFF98247),
        title: Text(
          'Venta de Tours',
          style: GoogleFonts.mulish(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
        centerTitle: true,
      ),
      body: TikTokStyleFullPageScroller(
        swipeVelocityThreshold: 100,
        swipePositionThreshold: 0.2,
        animationDuration: const Duration(milliseconds: 400),
        controller: controller,
        builder: (BuildContext context, int index) {
          final dato = data[index];
          return Template(
            imagePath: dato['img'],
            title: dato['title'],
            content: dato['content'],
          );
        },
        contentSize: data.length,
      ),
    );
  }
}
