import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @no_comment.
  ///
  /// In en, this message translates to:
  /// **'No comment'**
  String get no_comment;

  /// No description provided for @friends.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get friends;

  /// No description provided for @raves.
  ///
  /// In en, this message translates to:
  /// **'Raves'**
  String get raves;

  /// No description provided for @invite_to_rave.
  ///
  /// In en, this message translates to:
  /// **'Invite to rave'**
  String get invite_to_rave;

  /// No description provided for @are_you_sure_delete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete'**
  String get are_you_sure_delete;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @friend_requests.
  ///
  /// In en, this message translates to:
  /// **'Friend requests'**
  String get friend_requests;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @deny.
  ///
  /// In en, this message translates to:
  /// **'Deny'**
  String get deny;

  /// No description provided for @something_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get something_went_wrong;

  /// No description provided for @check_internet_connectivity.
  ///
  /// In en, this message translates to:
  /// **'Check internet connectivity'**
  String get check_internet_connectivity;

  /// No description provided for @name_exists_retry.
  ///
  /// In en, this message translates to:
  /// **'Name exists, retry'**
  String get name_exists_retry;

  /// No description provided for @my_name_is.
  ///
  /// In en, this message translates to:
  /// **'My name is'**
  String get my_name_is;

  /// No description provided for @wrong_email_or_passwor.
  ///
  /// In en, this message translates to:
  /// **'Wrong email or password'**
  String get wrong_email_or_passwor;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @welcome_page_2_description.
  ///
  /// In en, this message translates to:
  /// **'Find the moments.\bA party company.\bMemories that will warm your heart.\bSo don\'t delay, let\'s start the fun'**
  String get welcome_page_2_description;

  /// No description provided for @hi_rave.
  ///
  /// In en, this message translates to:
  /// **'Hi, Rave'**
  String get hi_rave;

  /// No description provided for @registration.
  ///
  /// In en, this message translates to:
  /// **'Registration'**
  String get registration;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @please_enter_correct_email.
  ///
  /// In en, this message translates to:
  /// **'Please enter correct email'**
  String get please_enter_correct_email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @password_must_be_greater_than_6_characters.
  ///
  /// In en, this message translates to:
  /// **'Password must be greater than 6 characters'**
  String get password_must_be_greater_than_6_characters;

  /// No description provided for @rave_flack_no_flock.
  ///
  /// In en, this message translates to:
  /// **'Rave.. Flack? No. Flock'**
  String get rave_flack_no_flock;

  /// No description provided for @no_location.
  ///
  /// In en, this message translates to:
  /// **'No location setted'**
  String get no_location;

  /// No description provided for @are_you_sure_log_out.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get are_you_sure_log_out;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @make_organizator_role.
  ///
  /// In en, this message translates to:
  /// **'Make organizator role'**
  String get make_organizator_role;

  /// No description provided for @unmake_organizator_role.
  ///
  /// In en, this message translates to:
  /// **'Unmake organizator role'**
  String get unmake_organizator_role;

  /// No description provided for @remove_from_meet.
  ///
  /// In en, this message translates to:
  /// **'Remove from meet'**
  String get remove_from_meet;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @go_to_basket.
  ///
  /// In en, this message translates to:
  /// **'Go to Basket'**
  String get go_to_basket;

  /// No description provided for @see_guests.
  ///
  /// In en, this message translates to:
  /// **'See guests'**
  String get see_guests;

  /// No description provided for @update_this_meet.
  ///
  /// In en, this message translates to:
  /// **'Update this meet'**
  String get update_this_meet;

  /// No description provided for @are_you_sure_delete_meet.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this meet?'**
  String get are_you_sure_delete_meet;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @name_is_too_short.
  ///
  /// In en, this message translates to:
  /// **'The name is too short'**
  String get name_is_too_short;

  /// No description provided for @accepted.
  ///
  /// In en, this message translates to:
  /// **'Accepted'**
  String get accepted;

  /// No description provided for @created_by_you.
  ///
  /// In en, this message translates to:
  /// **'Created by you'**
  String get created_by_you;

  /// No description provided for @invitations.
  ///
  /// In en, this message translates to:
  /// **'Invitations'**
  String get invitations;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @too_short_title.
  ///
  /// In en, this message translates to:
  /// **'Too short title'**
  String get too_short_title;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @private.
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get private;

  /// No description provided for @public.
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get public;

  /// No description provided for @contains_basket.
  ///
  /// In en, this message translates to:
  /// **'Contains basket'**
  String get contains_basket;

  /// No description provided for @cart_added.
  ///
  /// In en, this message translates to:
  /// **'Cart added'**
  String get cart_added;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @add_to_friends.
  ///
  /// In en, this message translates to:
  /// **'Add to friends'**
  String get add_to_friends;

  /// No description provided for @friend_name.
  ///
  /// In en, this message translates to:
  /// **'Friend name'**
  String get friend_name;

  /// No description provided for @request_sended.
  ///
  /// In en, this message translates to:
  /// **'Request sended'**
  String get request_sended;

  /// No description provided for @username_not_found.
  ///
  /// In en, this message translates to:
  /// **'Username not found'**
  String get username_not_found;

  /// No description provided for @request_already_sended.
  ///
  /// In en, this message translates to:
  /// **'Request already sended'**
  String get request_already_sended;

  /// No description provided for @already_your_friend.
  ///
  /// In en, this message translates to:
  /// **'Already your friend'**
  String get already_your_friend;

  /// No description provided for @cannot_add_yourself.
  ///
  /// In en, this message translates to:
  /// **'What? You cannot add yourself. Lol...'**
  String get cannot_add_yourself;

  /// No description provided for @you_use.
  ///
  /// In en, this message translates to:
  /// **'You use'**
  String get you_use;

  /// No description provided for @you_grab.
  ///
  /// In en, this message translates to:
  /// **'You grab'**
  String get you_grab;

  /// No description provided for @no_price.
  ///
  /// In en, this message translates to:
  /// **'No price'**
  String get no_price;

  /// No description provided for @created_by.
  ///
  /// In en, this message translates to:
  /// **'Created by'**
  String get created_by;

  /// No description provided for @grabbed_by.
  ///
  /// In en, this message translates to:
  /// **'Grabbed by'**
  String get grabbed_by;

  /// No description provided for @who_will_use_it.
  ///
  /// In en, this message translates to:
  /// **'Who will use it'**
  String get who_will_use_it;

  /// No description provided for @not_grabbed.
  ///
  /// In en, this message translates to:
  /// **'Not grabbed'**
  String get not_grabbed;

  /// No description provided for @not_used.
  ///
  /// In en, this message translates to:
  /// **'Not used'**
  String get not_used;

  /// No description provided for @use.
  ///
  /// In en, this message translates to:
  /// **'Use'**
  String get use;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @change_region.
  ///
  /// In en, this message translates to:
  /// **'Change region'**
  String get change_region;

  /// No description provided for @create_new_basket_item.
  ///
  /// In en, this message translates to:
  /// **'Create new basket item'**
  String get create_new_basket_item;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @please_enter_a_number.
  ///
  /// In en, this message translates to:
  /// **'Please enter a number'**
  String get please_enter_a_number;

  /// No description provided for @please_enter_a_valid_number.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid number'**
  String get please_enter_a_valid_number;

  /// No description provided for @alert.
  ///
  /// In en, this message translates to:
  /// **'Alert'**
  String get alert;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
