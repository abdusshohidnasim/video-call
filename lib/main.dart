import 'package:flutter/material.dart';
import 'package:flutter_application_2/calling.dart';

void
main() {
  runApp(
    const MyApp(),
  );
}

class MyApp
    extends
        StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}
// only 2 jon join hoi ta parba 
// ar ja webside thaka  appid ar appssigne sai web ar nam holo 
// https://console.zegocloud.com/projectMgr/nativeDownload?appId=1814610129&scene=1&platform=4&fromPath=%2FprojectMgr%2FnativeUIConfig&prevPath=
class MyHomePage
    extends
        StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String
  title;

  @override
  State<
    MyHomePage
  >
  createState() =>
      _MyHomePageState();
}

class _MyHomePageState
    extends
        State<
          MyHomePage
        > {
  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    TextEditingController
    textcontrlarcontroller =
        TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Video Calling App",
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                20,
              ),
              child: TextFormField(
                controller: textcontrlarcontroller,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(
                  MaterialPageRoute(
                    builder:
                        (
                          context,
                        ) => Calling(
                          callarid: textcontrlarcontroller.text,
                        ),
                  ),
                );
              },
              child: Text(
                "join",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
