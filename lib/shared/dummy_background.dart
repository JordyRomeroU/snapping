import 'package:flutter/material.dart';

class DummyBackgroundContent extends StatelessWidget {
  final accent = Color(0xff8ba38d);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[400],
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Card(
                elevation: 20,
                child: Column(
                  children: [
                    ListTile(
                      // leading: const Icon(Icons.person),
                      title: const Text('Informacion',),
                      subtitle: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                                    SizedBox(height: 20),
                                    Text("Parentesco:"),
                                    SizedBox(height: 20),
                                    Text("Nombre Completo:"),
                                    SizedBox(height: 20),
                                    Text("Celular:"),
                                    SizedBox(height: 20),
                                    Text("Convencional:"),
                                    SizedBox(height: 20),
                                    Text("Dirección:"),
                                    SizedBox(height: 20),
                                    Text("Provincia:"),
                                    SizedBox(height: 20),
                                    Text("Ciudad:"),
                                    SizedBox(height: 20), 
                          ],
                        ),
                      ),
                    ),

                    ListTile(
                      title: const Text('Informacion'),
                      subtitle: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                                    SizedBox(height: 20),
                                    Text("Parentesco:"),
                                    SizedBox(height: 20),
                                    Text("Nombre Completo:"),
                                    SizedBox(height: 20),
                                    Text("Celular:"),
                                    SizedBox(height: 20),
                                    Text("Convencional:"),
                                    SizedBox(height: 20),
                                    Text("Dirección:"),
                                    SizedBox(height: 20),
                                    Text("Provincia:"),
                                    SizedBox(height: 20),
                                    Text("Ciudad:"),
                                    SizedBox(height: 20), 
                          ],
                        ),
                      ),
                    ),

                    ListTile(
                      title: const Text('Informacion'),
                      subtitle: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                                    SizedBox(height: 20),
                                    Text("Parentesco:"),
                                    SizedBox(height: 20),
                                    Text("Nombre Completo:"),
                                    SizedBox(height: 20),
                                    Text("Celular:"),
                                    SizedBox(height: 20),
                                    Text("Convencional:"),
                                    SizedBox(height: 20),
                                    Text("Dirección:"),
                                    SizedBox(height: 20),
                                    Text("Provincia:"),
                                    SizedBox(height: 20),
                                    Text("Ciudad:"),
                                    SizedBox(height: 20), 
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}