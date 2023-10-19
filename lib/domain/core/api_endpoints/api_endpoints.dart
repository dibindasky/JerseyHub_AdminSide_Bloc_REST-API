class ApiEndPoints {
  // static String baseUrl = 'http://192.168.1.5:3000/admin';
  static String baseUrl = 'http://192.168.238.227:3000/admin';

  static String signIn = '/adminlogin';
  static String catogery = '/category';
  static String coupon = '/coupons';
  static String inventory = '/inventories';
  static String inventoryImage = '/inventories/:id/image';
  static String inventoryStock = '/inventories/:id/stock';
  static String offer = '/offers';
  static String getOrders = '/orders';
  static String editOrderStatus = '/orders/edit/status';
  static String addPaymentMethod = '/payment/payment-method/new';
  static String getUsers = '/users';
  static String blockUsers = '/users/block';
  static String unblockUsers = '/users/unblock';
}
