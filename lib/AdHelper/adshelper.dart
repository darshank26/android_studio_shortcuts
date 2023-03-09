import 'dart:io';

class AdHelper {

  static String get bannerAdUnitIdOfHomeScreen {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2180535035689124/9507745772';
    }  else {
      throw UnsupportedError('Unsupported platform');
    }
  }


  static String get appOpenAd {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2180535035689124/8601858216';
    }  else {
      throw UnsupportedError('Unsupported platform');
    }
  }

}