import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rede_social1/categorias.dart';
import 'package:rede_social1/login.dart';
import 'Carousel.dart';
import 'ImagensInicio.dart';
import 'Storys.dart';
import 'categorias.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => Home_page(),
      },
    );
  }
}

class Home_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      /* AppbarTop */
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      /* Fim AppBarTop */

      /* Menu Lateral */
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.network(
                    'https://64.media.tumblr.com/a4b20acf9604445798b00c23ca8edddf/7bc9d88ab8bc0769-86/s400x600/67cde2e70a64895dea8d90fcb31a3ffdbc787731.jpg'),
              ),
              accountName: Text('Mahki'),
              accountEmail: Text('Mahki@hotmail.com'),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.wallpaperup.com/uploads/wallpapers/2017/01/10/1072675/2da6cfbf5afae06fc390640d00f6c280-700.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_box_outlined),
              title: Text('Ver Perfil'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.manage_accounts_outlined),
              title: Text('Configurações'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.backspace_outlined),
              title: Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      /* Fim menuLateral */

      /* Botao adicionar */
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        tooltip: 'Adicionar',
      ),
      /* Fim botao adicionar */

      /* Principal */
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Carrosel(),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(
                  "Categorias",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Categorias(),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "Imagens mais curtidas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ImagensInicio(),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(
                  "Perfils da Semana",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ),
            Storys(),
            /* Fim  */
          ],
        ),
      ),
      /* FimPrincipal */

      /* AppbarBottom */
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: 'Itens Salvos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_late_outlined),
              label: 'Novidades',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
      /* FimAppbarBottom */
    );
  }

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  int _selectedIndex = 0;
}
