import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Latihan Grid View"),
        ),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Harimau()),
              );
            },
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ListTile(
                    leading: Hero(
                      tag: 'Harimau',
                      child: Image(
                        image: NetworkImage(
                            'https://asset.kompas.com/crops/LHRt-0S8mpj3761_Bp-e3lDyf3U=/0x0:993x662/750x500/data/photo/2022/07/17/62d3e4d12d541.jpg'),
                        fit: BoxFit.fill,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    title: Text('Sonu Nigam'),
                    subtitle: Text('Best of Sonu Nigam Song'),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                ListTile(
                  leading: ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://news.tamansafari.com/Newsportalv22ok/upload/26_Harimau_Sumatera_Full.jpg'),
                      fit: BoxFit.fill,
                      width: 80,
                      height: 80,
                    ),
                  ),
                  title: Text('Sonu Nigam'),
                  subtitle: Text('Best of Sonu Nigam Song'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Harimau extends StatelessWidget {
  const Harimau({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Gambar'),
      ),
      body: const Center(
        child: Hero(
            tag: 'Harimau',
            child: Image(
                image: NetworkImage(
                    'https://news.tamansafari.com/Newsportalv22ok/upload/26_Harimau_Sumatera_Full.jpg'))),
      ),
    );
  }
}
