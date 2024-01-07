// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:jerseyhub_admin/application/business_logic/Auth/auth_bloc.dart'
    as _i16;
import 'package:jerseyhub_admin/application/business_logic/category/category_bloc.dart'
    as _i17;
import 'package:jerseyhub_admin/application/business_logic/coupon/coupon_bloc.dart'
    as _i18;
import 'package:jerseyhub_admin/application/business_logic/inventory/add_inventory/add_inventory_bloc.dart'
    as _i15;
import 'package:jerseyhub_admin/application/business_logic/inventory/edit_inventory/edit_inventory_bloc.dart'
    as _i19;
import 'package:jerseyhub_admin/application/business_logic/inventory/get_inventory/get_inventory_bloc.dart'
    as _i20;
import 'package:jerseyhub_admin/application/business_logic/offer/offer_bloc.dart'
    as _i21;
import 'package:jerseyhub_admin/application/business_logic/users/users_bloc.dart'
    as _i22;
import 'package:jerseyhub_admin/data/services/auth/auth.dart' as _i4;
import 'package:jerseyhub_admin/data/services/catogery/catogery.dart' as _i6;
import 'package:jerseyhub_admin/data/services/coupon/coupon.dart' as _i8;
import 'package:jerseyhub_admin/data/services/inventry/inventory.dart' as _i10;
import 'package:jerseyhub_admin/data/services/offer/offer.dart' as _i12;
import 'package:jerseyhub_admin/data/services/users/users.dart' as _i14;
import 'package:jerseyhub_admin/domain/repositories/authentication_repository.dart'
    as _i3;
import 'package:jerseyhub_admin/domain/repositories/catogery_repository.dart'
    as _i5;
import 'package:jerseyhub_admin/domain/repositories/coupon_repository.dart'
    as _i7;
import 'package:jerseyhub_admin/domain/repositories/inventory_repository.dart'
    as _i9;
import 'package:jerseyhub_admin/domain/repositories/offer_repository.dart'
    as _i11;
import 'package:jerseyhub_admin/domain/repositories/users_repository.dart'
    as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthRepository>(() => _i4.ApiAuth());
    gh.lazySingleton<_i5.CatogeryRepository>(() => _i6.CatogeryApi());
    gh.lazySingleton<_i7.CouponRepository>(() => _i8.CouponApi());
    gh.lazySingleton<_i9.InventoryRepository>(() => _i10.InventoryApi());
    gh.lazySingleton<_i11.OfferRepository>(() => _i12.OfferApi());
    gh.lazySingleton<_i13.UsersRepository>(() => _i14.UsersApi());
    gh.factory<_i15.AddInventoryBloc>(
        () => _i15.AddInventoryBloc(gh<_i9.InventoryRepository>()));
    gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(gh<_i3.AuthRepository>()));
    gh.factory<_i17.CategoryBloc>(
        () => _i17.CategoryBloc(gh<_i5.CatogeryRepository>()));
    gh.factory<_i18.CouponBloc>(
        () => _i18.CouponBloc(gh<_i7.CouponRepository>()));
    gh.factory<_i19.EditInventoryBloc>(
        () => _i19.EditInventoryBloc(gh<_i9.InventoryRepository>()));
    gh.factory<_i20.GetInventoryBloc>(
        () => _i20.GetInventoryBloc(gh<_i9.InventoryRepository>()));
    gh.factory<_i21.OfferBloc>(
        () => _i21.OfferBloc(gh<_i11.OfferRepository>()));
    gh.factory<_i22.UsersBloc>(
        () => _i22.UsersBloc(gh<_i13.UsersRepository>()));
    return this;
  }
}
