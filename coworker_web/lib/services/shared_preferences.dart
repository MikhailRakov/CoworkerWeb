import "dart:developer";

import "package:shared_preferences/shared_preferences.dart";

class PrefService {
  Future createCache(String userLink) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("userLink", userLink);
    log(userLink);
  }

  Future readCache() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var cache = preferences.getString("userLink");
    return cache;
  }

  Future removeCache() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove("userLink");
  }
}
