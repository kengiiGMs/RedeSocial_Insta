import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  State<Categorias> createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 15, 0, 40),
      child: (Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage('Jujutsu.png'),
                radius: 47,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage('Konosuba.jpg'),
                radius: 47,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage('LuffyIMG.jpg'),
                radius: 47,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage('Tanjiroo.jpg'),
                radius: 47,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage('Asta.jpg'),
                radius: 47,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
