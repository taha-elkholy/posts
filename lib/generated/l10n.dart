// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Social Task`
  String get appName {
    return Intl.message(
      'Social Task',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get userName {
    return Intl.message(
      'User Name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email`
  String get emailValidation {
    return Intl.message(
      'Enter a valid email',
      name: 'emailValidation',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid password`
  String get passwordValidation {
    return Intl.message(
      'Enter a valid password',
      name: 'passwordValidation',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `If you have not account Register`
  String get haveNoAccount {
    return Intl.message(
      'If you have not account Register',
      name: 'haveNoAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create new account`
  String get createNewAccount {
    return Intl.message(
      'Create new account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password not match`
  String get confirmPasswordValidation {
    return Intl.message(
      'Password not match',
      name: 'confirmPasswordValidation',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your First Name`
  String get firstNameValidation {
    return Intl.message(
      'Enter Your First Name',
      name: 'firstNameValidation',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Last Name`
  String get lastNameValidation {
    return Intl.message(
      'Enter Your Last Name',
      name: 'lastNameValidation',
      desc: '',
      args: [],
    );
  }

  /// `Main`
  String get main {
    return Intl.message(
      'Main',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get saved {
    return Intl.message(
      'Saved',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Upload Image`
  String get uploadImage {
    return Intl.message(
      'Upload Image',
      name: 'uploadImage',
      desc: '',
      args: [],
    );
  }

  /// `Write comment around the picture`
  String get writeComment {
    return Intl.message(
      'Write comment around the picture',
      name: 'writeComment',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get post {
    return Intl.message(
      'Post',
      name: 'post',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get noConnectionMessage {
    return Intl.message(
      'No Internet Connection',
      name: 'noConnectionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, Please try again later`
  String get unKnownErrorMessage {
    return Intl.message(
      'Something went wrong, Please try again later',
      name: 'unKnownErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get accountExistMessage {
    return Intl.message(
      'The account already exists for that email.',
      name: 'accountExistMessage',
      desc: '',
      args: [],
    );
  }

  /// `There is no user record corresponding to this identifier`
  String get accountNotExistMessage {
    return Intl.message(
      'There is no user record corresponding to this identifier',
      name: 'accountNotExistMessage',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get weekPasswordMessage {
    return Intl.message(
      'The password provided is too weak.',
      name: 'weekPasswordMessage',
      desc: '',
      args: [],
    );
  }

  /// `The password is invalid.`
  String get wrongPasswordMessage {
    return Intl.message(
      'The password is invalid.',
      name: 'wrongPasswordMessage',
      desc: '',
      args: [],
    );
  }

  /// `The required data not found`
  String get notFoundMessage {
    return Intl.message(
      'The required data not found',
      name: 'notFoundMessage',
      desc: '',
      args: [],
    );
  }

  /// `Can't access the locale database`
  String get canNotAccess {
    return Intl.message(
      'Can\'t access the locale database',
      name: 'canNotAccess',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Send `
  String get send {
    return Intl.message(
      'Send ',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password Reset Email sent, check your inbox`
  String get emailSent {
    return Intl.message(
      'Password Reset Email sent, check your inbox',
      name: 'emailSent',
      desc: '',
      args: [],
    );
  }

  /// `Nothing to update, choose profile image first`
  String get noThingUpdated {
    return Intl.message(
      'Nothing to update, choose profile image first',
      name: 'noThingUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Nothing to Show, Add More Posts`
  String get nothingToShow {
    return Intl.message(
      'Nothing to Show, Add More Posts',
      name: 'nothingToShow',
      desc: '',
      args: [],
    );
  }

  /// `Add Post Image and Content First, Or cancel`
  String get addPostFirst {
    return Intl.message(
      'Add Post Image and Content First, Or cancel',
      name: 'addPostFirst',
      desc: '',
      args: [],
    );
  }

  /// `You can not share your post`
  String get canNotShare {
    return Intl.message(
      'You can not share your post',
      name: 'canNotShare',
      desc: '',
      args: [],
    );
  }

  /// `This Function not implemented yet`
  String get notImplemented {
    return Intl.message(
      'This Function not implemented yet',
      name: 'notImplemented',
      desc: '',
      args: [],
    );
  }

  /// `Shred This Post`
  String get shredThisPost {
    return Intl.message(
      'Shred This Post',
      name: 'shredThisPost',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
