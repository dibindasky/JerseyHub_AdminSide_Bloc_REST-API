class ApiEndPoints {
  // static String baseUrl = 'http://192.168.1.5:3000/admin';
  static String baseUrl = 'http://192.168.176.227:3000';

  static String refreshUrl = '/validate-token';

  static String signIn = '/admin/adminlogin';
  static String catogery = '/admin/category';
  static String coupon = '/admin/coupons';
  static String inventory = '/admin/inventories';
  static String inventoryImage = '/admin/inventories/:id/image';
  static String inventoryStock = '/admin/inventories/:id/stock';
  static String offer = '/admin/offers';
  static String getOrders = '/admin/orders';
  static String getOrderDetail = '/admin/orders/{id}';
  static String editOrderStatus = '/admin/orders/status';
  static String editOrderPaymentStatus = '/admin/orders/payment-status';
  static String addPaymentMethod = '/admin/payment/payment-method/new';
  static String getUsers = '/admin/users';
  static String blockUsers = '/admin/users/block';
  static String unblockUsers = '/admin/users/unblock';
}
