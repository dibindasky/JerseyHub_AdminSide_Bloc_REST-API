class ApiEndPoints {
  // static String baseUrl = 'http://192.168.1.5:3000/admin';
  static String baseUrl = 'http://192.168.195.227:3000/admin';

  static String signIn = '/adminlogin';
  static String addCategory = '/category/add';
  static String deleteCategory = '/category/delete';
  static String updateCategory = '/category/update';
  static String createCoupen = '/coupons/create';
  static String deleteCoupen = '/coupons/delete';
  static String addInventory = '/inventories/add';
  static String updateInventory = '/inventories/update';
  static String deleteInventory = '/inventories/delete';
  static String addOffer = '/offers/add';
  static String getOrders = '/orders';
  static String editOrderStatus = '/orders/edit/status';
  static String addPaymentMethod = '/payment/payment-method/new';
  static String getUsers = '/users';
  static String blockUsers = '/users/block';
  static String unblockUsers = '/users/unblock';
}
