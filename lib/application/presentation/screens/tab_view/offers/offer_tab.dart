import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/offers/widgets/offer_adding_tile.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/offers/widgets/offer_list_view.dart';

class OffersTab extends StatelessWidget {
  const OffersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Add an Offer'),
        OfferAddingTile(),
        Divider(),
        Text('Avaliable Offers'),
        OfferListView()
      ],
    );
  }
}

