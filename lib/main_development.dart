// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:stagingapp/app/app.dart';
import 'package:stagingapp/envinorment.dart';
import 'package:stagingapp/main_staging.dart';

Future<void> main_dev() async {
  await main_staging(Envinorment.dev);
}
