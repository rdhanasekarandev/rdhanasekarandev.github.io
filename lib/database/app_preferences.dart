import 'package:flutter/material.dart';
import 'package:karkai_web/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  // Constants for Preference-Value's data-type
  static const String PREF_TYPE_BOOL = "BOOL";
  static const String PREF_TYPE_INTEGER = "INTEGER";
  static const String PREF_TYPE_DOUBLE = "DOUBLE";
  static const String PREF_TYPE_STRING = "STRING";

  //-------------------------------------------------------------------- Singleton ----------------------------------------------------------------------
  // Final static instance of class initialized by private constructor
  static final AppPreferences _instance = AppPreferences._internal();
  // Factory Constructor
  factory AppPreferences() => _instance;

  AppPreferences._internal();

  Future<void> setLoginStatus({@required String status}) => setPreference(
      prefName: AppConstants.LOGIN_STATUS,
      prefType: PREF_TYPE_STRING,
      prefValue: status);
  Future<void> setLanguageCode({@required String code}) => setPreference(
      prefName: AppConstants.LANGUAGE_CODE,
      prefType: PREF_TYPE_STRING,
      prefValue: code);

  Future<dynamic> getLoginStatus() async =>
      await _getPreference(prefName: AppConstants.LOGIN_STATUS) ??
      AppConstants.LOGGED_OUT;
  Future<dynamic> getLanguageCode() async =>
      await _getPreference(prefName: AppConstants.LANGUAGE_CODE) ?? 'en';

  // Check value for NULL. If NULL provide default value as FALSE.

  //--------------------------------------------------- Private Preference Methods ----------------------------------------------------
  /// Set Preference Method -> void
  /// @param -> @required prefName -> String
  ///        -> @required prefValue -> dynamic
  ///        -> @required prefType -> String
  /// @usage -> This is a generalized method to set preferences with required Preference-Name(Key) with Preference-Value(Value) and Preference-Value's data-type.
  Future<void> setPreference(
      {@required String prefName,
      @required dynamic prefValue,
      @required String prefType}) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    switch (prefType) {
      // prefType is bool
      case PREF_TYPE_BOOL:
        {
          _preferences.setBool(prefName, prefValue);
          break;
        }
      // prefType is int
      case PREF_TYPE_INTEGER:
        {
          _preferences.setInt(prefName, prefValue);
          break;
        }
      // prefType is double
      case PREF_TYPE_DOUBLE:
        {
          _preferences.setDouble(prefName, prefValue);
          break;
        }
      // prefType is String
      case PREF_TYPE_STRING:
        {
          _preferences.setString(prefName, prefValue);
          break;
        }
    }
  }

  /// Get Preference Method -> Future<dynamic>
  /// @param -> @required prefName -> String
  /// @usage -> Returns Preference-Value for given Preference-Name
  Future<dynamic> _getPreference({@required prefName}) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    return _preferences.get(prefName);
  }
}
