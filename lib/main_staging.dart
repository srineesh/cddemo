// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:stagingapp/config_reader.dart';
import 'package:stagingapp/envinorment.dart';

Future<void> main_staging(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color? primaryColor;
  switch (env) {
    case Envinorment.dev:
      primaryColor = Colors.blue;
      break;
    case Envinorment.prod:
      primaryColor = Colors.red;
      break;
  }
  runApp(
    Provider.value(
      value: primaryColor,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
          backgroundColor: Provider.of<Color>(context),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
