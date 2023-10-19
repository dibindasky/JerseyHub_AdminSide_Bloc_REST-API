import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/offer/offer_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/widgets/offer_coupon_tile.dart';

class OfferListView extends StatelessWidget {
  const OfferListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OfferBloc>().add(const OfferEvent.getOffers());
    });
    return BlocConsumer<OfferBloc, OfferState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      buildWhen: (previous,current) => previous.getOfferResponseModel != current.getOfferResponseModel,
      builder: (context, state) {
        if(state.getOfferResponseModel == null){
          return const Center(child: Text('Nothing to show'),);
        }
        return Expanded(
          child: ListView.builder(
              itemCount: state.getOfferResponseModel!.data!.length,
              itemBuilder: (context, index) {
                final offer=state.getOfferResponseModel!.data![index];
                return OfferCouponCard(offer: offer);
              }),
        );
      },
    );
  }
}
