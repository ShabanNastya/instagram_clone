import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/l10n/gen/app_localizations.dart';
import 'package:instagram_clone/presentation/profile/core/user/user_bloc.dart';
import 'package:instagram_clone/presentation/profile/core/user_detailed/user_detailed_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.editProfile),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).colorScheme.primary),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 10,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withAlpha(45),
                              offset: const Offset(0, 7)),
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkZD-VsytAMF7-0NASGAtycgVAt5g-6ln4gQ&usqp=CAU"),
                        )),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 3,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          child: const Icon(Icons.edit))),
                ],
              ),
              Column(
                children: <Widget>[
                  BlocBuilder<UserDetailedBloc, UserDetailedState>(
                    builder: (context, state) {
                      return UserTextField(
                        initialValue: state.userApp?.username,
                        labelText: AppLocalizations.of(context)!.username,
                        hintText:
                            AppLocalizations.of(context)!.username + "...",
                        onChanged: (username) {
                          context
                              .read<UserDetailedBloc>()
                              .updateUsername(username);
                        },
                      );
                    },
                  ),
                  BlocBuilder<UserDetailedBloc, UserDetailedState>(
                    builder: (context, state) {
                      return UserTextField(
                        initialValue: state.userApp?.email,
                        labelText: AppLocalizations.of(context)!.email,
                        hintText: AppLocalizations.of(context)!.email + "...",
                        onChanged: (email) {
                          context.read<UserDetailedBloc>().updateEmail(email);
                        },
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return ElevatedButton(
                          onPressed: () {
                            context.read<UserBloc>().saveUser(state.userApp!);
                            Navigator.of(context).pop();
                          },
                          child: Text(AppLocalizations.of(context)!.save));
                    },
                  ),
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return ElevatedButton(
                          onPressed: () {
                            context.read<UserBloc>().deleteUser(state.userApp!);
                            Navigator.of(context).pop();
                          },
                          child: Text(AppLocalizations.of(context)!.delete));
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class UserTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Function(String) onChanged;
  final String? initialValue;

  const UserTextField(
      {required this.labelText,
      required this.hintText,
      required this.onChanged,
      required this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            labelText + ":",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          initialValue: initialValue,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            labelText: labelText,
            hintText: hintText,
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
