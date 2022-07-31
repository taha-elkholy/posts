import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:sqflite/sqflite.dart';

abstract class ApplicationException implements Exception {}

class GenericApplicationException extends ApplicationException {
  final String message;

  GenericApplicationException({required this.message});
}

GenericApplicationException mapFirebaseException(FirebaseException e) {
  debugPrint(e.toString());

  if (e is FirebaseAuthException) {
    return _mapAuthException(e);
  } else {
    return GenericApplicationException(message: S.current.unKnownErrorMessage);
  }
}

GenericApplicationException mapLocaleDBException(DatabaseException e) {
  debugPrint(e.toString());

  if (e.isNoSuchTableError()) {
    return GenericApplicationException(message: S.current.notFoundMessage);
  }
  if (e.isOpenFailedError()) {
    return GenericApplicationException(message: S.current.canNotAccess);
  } else {
    return GenericApplicationException(message: S.current.unKnownErrorMessage);
  }
}

GenericApplicationException _mapAuthException(FirebaseAuthException e) {
  switch (e.code) {
    case 'user-not-found':
      return GenericApplicationException(
          message: S.current.accountNotExistMessage);
    case 'network-request-failed':
      return GenericApplicationException(
          message: S.current.noConnectionMessage);
    case 'wrong-password':
      return GenericApplicationException(
          message: S.current.wrongPasswordMessage);
    case 'weak-password':
      return GenericApplicationException(
          message: S.current.weekPasswordMessage);
    case 'email-already-in-use':
      return GenericApplicationException(
          message: S.current.accountExistMessage);

    // we can add more cases later
    default:
      return GenericApplicationException(
          message: S.current.unKnownErrorMessage);
  }
}
