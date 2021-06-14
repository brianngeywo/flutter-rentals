import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static String userIdKey = "USERKEY";
  static String usernameKey = "USERNAMEKEY";
  static String displayNameKey = "USERDISPLAYNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";
  static String userProfileUrlKey = "USERPROFILEURLKEY";

  //save data
  Future<bool> saveUsername(String getUsername) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(usernameKey, getUsername);
  }

  Future<bool> saveDisplayname(String getDisplayName) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(displayNameKey, getDisplayName);
  }

  Future<bool> saveUserId(String getUserId) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(userIdKey, getUserId);
  }

  Future<bool> saveUserEmail(String getUserEmail) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(userEmailKey, getUserEmail);
  }

  Future<bool> saveUserProfileUrl(String getUserProfileUrl) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(userProfileUrlKey, getUserProfileUrl);
  }

    //get data
  Future<String?> getUsername() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(usernameKey);
  }

  Future<String?> getDisplayname() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(displayNameKey);
  }

  Future<String?> getUserId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userIdKey);
  }

  Future<String?> getUserEmail() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userEmailKey,);
  }

  Future<String?> getUserProfileUrl() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userProfileUrlKey);
  }
}
