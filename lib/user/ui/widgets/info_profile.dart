import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_tolima/user/bloc/bloc_user.dart';
import 'package:trips_tolima/user/model/user.dart';
import 'package:trips_tolima/user/ui/widgets/user_info.dart';

class InfoProfile extends StatelessWidget {
  UserBloc userBloc;
  double marginTopPhoto = 125.0;
  User user;

  InfoProfile(this.user);

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    return UserInfo(user);
  }
}
