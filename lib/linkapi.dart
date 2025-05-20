class AppLink {
  // //for testing on web
  static const String server = "http://127.0.0.1:8012/ecommerceenhanced";
  // //for testing on emulator
  // static const String server = "http://10.0.2.2:8012/ecommerceenhanced";

  //.................
  static const String imagecategories = "$server/images/categories";
  static const String imageitems = "$server/images/items";
  static const String imageads = "$server/images/ads";
  //.................

  // static const String test = "$server/test.php";
  //auth
  static const String signup = "$server/admin/auth/signup.php";
  static const String resend = "$server/admin/auth/resend.php";
  static const String verifycode = "$server/admin/auth/verifycode.php";
  static const String login = "$server/admin/auth/login.php";
  //categories
  static const String catview = "$server/admin/categories/view.php";
  static const String catadd = "$server/admin/categories/add.php";
  static const String catactive = "$server/admin/categories/active.php";
  //-items--
  static const String itemsview = "$server/admin/items/view.php";
  static const String itemsadd = "$server/admin/items/add.php";
  static const String itemsviewAll = "$server/admin/items/viewAll.php";
  static const String itemsedit = "$server/admin/items/update.php";
  static const String itemsdelete = "$server/admin/items/delete.php";
  //orders checkout
  static const String checkout = "$server/orders/checkout.php";
  static const String delete = "$server/orders/delete.php";
  static const String rating = "$server/orders/rating.php";
  //adminOrders
  static const String pending = "$server/admin/orders/pending.php";
  static const String details = "$server/admin/orders/details.php";
  static const String approveorder = "$server/admin/orders/approve.php";
  //--ads-
  static const String adsview = "$server/admin/ads/view.php";
  static const String adsadd = "$server/admin/ads/add.php";
  static const String adsedit = "$server/admin/ads/edit.php";
  static const String adsdelete = "$server/admin/ads/delete.php";
}
