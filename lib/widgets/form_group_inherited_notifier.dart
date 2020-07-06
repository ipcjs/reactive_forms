// Copyright 2020 Joan Pablo Jiménez Milian. All rights reserved.
// Use of this source code is governed by the MIT license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

/// Represents an Inherited Widget that exposes a [FormGroup]
/// to its descendants and listen to changes in [FormGroup.onStatusChanged]
/// and rebuilds all the dependents widgets.
class FormGroupInheritedNotifier
    extends InheritedNotifier<ValueListenable<ControlStatus>> {
  final FormGroup formGroup;

  FormGroupInheritedNotifier({
    @required this.formGroup,
    @required Widget child,
  }) : super(
          notifier: formGroup.onStatusChanged,
          child: child,
        );
}
