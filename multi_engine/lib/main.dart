import 'package:flutter/material.dart';

void main() => runApp(
      App(child: DemoWidget(color: Colors.transparent, name: 'transparent')),
    );

@pragma('vm:entry-point')
void mainGreen() => runApp(
      App(child: DemoWidget(color: Colors.greenAccent, name: 'green')),
    );

@pragma('vm:entry-point')
void mainPink() => runApp(
      App(child: DemoWidget(color: Colors.pinkAccent, name: 'pink')),
    );

@pragma('vm:entry-point')
void mainYellow() => runApp(
      App(child: DemoWidget(color: Colors.yellowAccent, name: 'yellow')),
    );

class App extends StatelessWidget {
  const App({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: child,
    );
  }
}

class DemoWidget extends StatelessWidget {
  const DemoWidget({Key? key, required this.color, required this.name})
      : super(key: key);
  final Color color;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FlutterLogo(),
          Text('Flutter: $name'),
        ],
      ),
    );
  }
}
