import 'package:flutter/material.dart';
import '../provider/counter_provider.dart';
import 'package:provider/provider.dart';


class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 76, 233),
        title: Text('Counter App ${context.watch<Counter>().count}'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Count(),
            SizedBox(height:50),
            ElevatedButton(
              onPressed:() {
                Navigator.pushNamed(context, '/second');
              } 
            , child: Text('Next Screen'),
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 150, 76, 233)),
            )
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 150, 76, 233),
        onPressed: () => context.read<Counter>().incerment(),
        child: Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('${context.watch<Counter>().count}',
    key: Key('couterState'), style: Theme.of(context).textTheme.headline5,
    );
  }
}