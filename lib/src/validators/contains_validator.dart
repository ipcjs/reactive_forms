// Copyright 2020 Joan Pablo Jimenez Milian. All rights reserved.
// Use of this source code is governed by the MIT license that can be
// found in the LICENSE file.

import 'package:reactive_forms/reactive_forms.dart';

/// Validator that requires the control's array contains all provided values.
class ContainsValidator<T> extends Validator<Iterable<T>> {
  final List<T> values;

  /// Constructs the instance of the validator.
  ///
  /// The argument [values] must not be null.
  ContainsValidator(this.values);

  @override
  Map<String, Object>? validate(AbstractControl<Iterable<T>> control) {
    return control.value != null && values.every(control.value!.contains)
        ? null
        : {ValidationMessage.contains: true};
  }
}
