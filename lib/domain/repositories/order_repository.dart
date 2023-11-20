import 'package:dartz/dartz.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/order/get_order_detail_response_model/get_order_detail_response_model.dart';
import 'package:jerseyhub_admin/domain/models/order/get_order_response_model/get_order_response_model.dart';

abstract class OrderRepository{
  
  Future<Either<Failure,GetOrderResponseModel>> getOrders();
  Future<Either<Failure,GetOrderDetailResponseModel>> getOrderDetail({required int id});
}