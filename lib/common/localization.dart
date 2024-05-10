import 'package:flutter/material.dart';
import 'package:rave_flock/common/gen/localization/app_localizations.dart';

extension Localization on BuildContext {
  AppLocalizations get S => AppLocalizations.of(this);
}
