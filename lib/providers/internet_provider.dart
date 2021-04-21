import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';

class InternetProvider with ChangeNotifier {
  bool internetStatus = true;
  getInternet() async {
    internetStatus =
        await Connectivity().checkConnectivity() != ConnectivityResult.none;
print(internetStatus);
    notifyListeners();
    return internetStatus;
  }
}
