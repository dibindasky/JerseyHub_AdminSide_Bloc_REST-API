import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/users/users_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';
import 'package:jerseyhub_admin/domain/models/users/block_unblock_user_qurrey/block_unblock_user_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/users/get_users_qurrey/get_users_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/users/get_users_response_model/user.dart';

class ScreenAllUsers extends StatelessWidget {
  const ScreenAllUsers({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<UsersBloc>()
          .add(UsersEvent.getUsers(getUsersQurrey: GetUsersQurrey(page: 1)));
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Users List'),
        Expanded(
          child: BlocConsumer<UsersBloc, UsersState>(
            listener: (context, state) {
              if (state.isBlocked || state.isUnBlocked || state.hasError) {
                showSnack(
                    context: context,
                    message: state.message!,
                    color: state.isBlocked || state.hasError ? kRed : kGreen);
              }
            },
            builder: (context, state) {
              if (state.isLoading) {
                return const LoadingAnimation(width: 0.20);
              } else if (state.getUsersResponseModel != null &&
                  state.getUsersResponseModel!.users != null &&
                  state.getUsersResponseModel!.users!.isNotEmpty) {
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: state.getUsersResponseModel!.users!.length,
                  itemBuilder: (context, index) {
                    return UserTile(
                        user: state.getUsersResponseModel!.users![index]);
                  },
                  separatorBuilder: (context, index) => kHeight10,
                );
              } else {
                return const Center(
                  child: Text('no users data available'),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

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
                            user.blockStatus! ? kRed.withOpacity(0.5) : kRed,
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
                            ? kGreen.withOpacity(0.5)
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
