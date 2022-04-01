import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagensInicio extends StatefulWidget {
  const ImagensInicio({Key? key}) : super(key: key);

  @override
  State<ImagensInicio> createState() => _ImagensInicioState();
}

class _ImagensInicioState extends State<ImagensInicio> {
  Color _iconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(60, 20, 60, 0),
          width: 600,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset('BlackClover.jpg')),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                tooltip: "Curtir",
                icon: const Icon(Icons.favorite_border),
                color: _iconColor,
                splashRadius: 25,
                splashColor: Colors.redAccent,
                disabledColor: Colors.white,
                onPressed: () {
                  setState(
                    () {
                      if (_iconColor == Colors.white) {
                        _iconColor = Colors.red;
                      } else {
                        _iconColor = Colors.white;
                      }
                    },
                  );
                },
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.beenhere_outlined),
                tooltip: "Salvar",
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment_outlined),
                tooltip: "Comentar",
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.find_replace_outlined),
                tooltip: "Compartilhar",
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(60, 20, 60, 0),
          width: 600,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image(
              image: AssetImage('JujutsuKaisen.jpg'),
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                tooltip: "Curtir",
                icon: const Icon(Icons.favorite_border),
                color: _iconColor,
                splashRadius: 25,
                splashColor: Colors.redAccent,
                disabledColor: Colors.white,
                onPressed: () {
                  setState(
                    () {
                      if (_iconColor == Colors.white) {
                        _iconColor = Colors.red;
                      } else {
                        _iconColor = Colors.white;
                      }
                    },
                  );
                },
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.beenhere_outlined),
                tooltip: "Salvar",
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment_outlined),
                tooltip: "Comentar",
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.find_replace_outlined),
                tooltip: "Compartilhar",
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {},
            tooltip: 'Ver Mais',
          ),
        ),
      ],
    );
  }
}
