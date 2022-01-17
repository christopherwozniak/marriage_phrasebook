import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RootPage());
  }
}

class RootPage extends StatefulWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: const Center(
            child: Text('Marriage Phrasebook'),
          ),
        ),
        body: ListView(
          children: const [
            Padding(padding: EdgeInsets.all(20)),
            Image(
              image: AssetImage('images/klotniamalzenska.jpeg'),
              width: 20,
            ),
            Padding(padding: EdgeInsets.all(20)),
            Text(
                'Wracasz do domu, i juz w progu słyszysz, ze Twej drugiej połówce coś się nie podoba? Znowu ta sama odzywka? To nic, inni mają gorzej! Podziel się co dziś usłyszałeś'),
            Text('Zarejestruj się')
          ],
        ));
  }
}
