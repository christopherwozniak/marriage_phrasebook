import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:marriage_phrasebook/features/auth/pages/auth_gate.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AuthGate());
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
            InkWell(child: Text('Wpisz magiczne słowo od Ukochanej ')),
          ],
        ));
  }
}
