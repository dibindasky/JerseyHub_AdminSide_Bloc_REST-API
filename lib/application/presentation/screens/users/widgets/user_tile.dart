import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/users/users_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/domain/models/users/block_unblock_user_qurrey/block_unblock_user_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/users/get_users_response_model/user.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
      height: sWidth * 0.40,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  kWidth10,
                  const CircleAvatar(
                    backgroundColor: kWhite,
                    radius: 30,
                    child: Icon(Iconsax.personalcard),
                  ),
                  kWidth30,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user.email!),
                      Text(user.name!),
                      Text(user.phone!),
                    ],
                  )
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (!user.blockStatus!) {
                        context.read<UsersBloc>().add(UsersEvent.blockUser(
                            blockUnblockUserQurrey:
                                BlockUnblockUserQurrey(id: user.id!)));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            user.blockStatus! ? kRed.withOpacity(0.3) : kRed,
                        foregroundColor: kWhite),
                    child: const Text('Block'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (user.blockStatus!) {
                        context.read<UsersBloc>().add(UsersEvent.unBlockUser(
                            blockUnblockUserQurrey:
                                BlockUnblockUserQurrey(id: user.id!)));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: !user.blockStatus!
                            ? kGreen.withOpacity(0.3)
                            : kGreen,
                        foregroundColor: kWhite),
                    child: const Text('UnBlock'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
