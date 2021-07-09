import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';

class SharedPrefs{

  Future setStringIntoCache(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key,value);
  }

  Future setBoolIntoCache(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key,value);
  }


  Future getStringFromCache(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<bool?> getBoolFromCache(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getBool(key) != null){
      return prefs.getBool(key);
    }
    else{
      return false;
    }
  }
}