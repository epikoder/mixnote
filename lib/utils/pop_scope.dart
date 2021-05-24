abstract class PopScope {
  DateTime? currentBackPressed;

  Future<bool> canPop() {
    DateTime now = DateTime.now();
    if (currentBackPressed == null || now.difference(currentBackPressed!) > Duration(seconds: 2)) {
      currentBackPressed = now;
      // TODO : install flutter toast
      return Future.value(false);
    }
    currentBackPressed = null;
    return Future.value(true);
  }
}