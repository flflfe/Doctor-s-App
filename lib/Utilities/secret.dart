import 'dart:io' show Platform;

class Secret {
  static const ANDROID_CLIENT_ID = "791588443554-bnii791q1jv1t4lc3tkdrhm49oh0iid5.apps.googleusercontent.com";
  //static const IOS_CLIENT_ID = "<enter your iOS client secret>";
  //static String getId() => Platform.isAndroid ? Secret.ANDROID_CLIENT_ID : Secret.IOS_CLIENT_ID;
  static String getId() => ANDROID_CLIENT_ID;
}
