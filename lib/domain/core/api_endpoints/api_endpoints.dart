class ApiEndPoints {
  // static String baseUrl = 'http://192.168.1.5:3000/admin';
  static String baseUrl = 'http://192.168.238.227:3000/admin';

  static String signIn = '/adminlogin';
  static String catogery = '/category';
  static String createCoupen = '/coupons/create';
  static String deleteCoupen = '/coupons/delete';
  static String inventory = '/inventories';
  static String addOffer = '/offers/add';
  static String getOrders = '/orders';
  static String editOrderStatus = '/orders/edit/status';
  static String addPaymentMethod = '/payment/payment-method/new';
  static String getUsers = '/users/getusers';
  static String blockUsers = '/users/block';
  static String unblockUsers = '/users/unblock';
}
