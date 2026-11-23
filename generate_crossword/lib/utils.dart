// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:built_collection/built_collection.dart';

extension RandomElements<E> on BuiltSet<E> {
  E randomElement([Random? random]) {
    final r = random ?? Random();
    return elementAt(r.nextInt(length));
  }
}
