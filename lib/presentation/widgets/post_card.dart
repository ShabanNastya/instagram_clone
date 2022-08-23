import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/domain/models/post.dart';
import 'package:instagram_clone/l10n/gen/app_localizations.dart';
import 'package:instagram_clone/presentation/post/core/post/post_bloc.dart';

class PostCard extends StatefulWidget {
  final Post? post;

  const PostCard({Key? key, required this.post}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  final _formKey = GlobalKey<FormState>();
  CollectionReference posts = FirebaseFirestore.instance.collection('posts');

  late String title;
  late String description;
  late String postImage = 'https://picsum.photos/250?image=9';

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: BlocBuilder<PostBloc, PostState>(
            builder: (context, state) {
              return Column(
                children: <Widget>[
                  Text("ADD IMAGE"),
                  InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.white.withOpacity(0.5),
                    child: Ink(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/250?image=9'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('choose var'),
                                content: SingleChildScrollView(
                                  child: ListBody(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        splashColor: Colors.red,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.camera,
                                              color: Colors.red,
                                            ),
                                            Text("camera"),
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        splashColor: Colors.red,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.image,
                                              color: Colors.red,
                                            ),
                                            Text("gallery"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      icon: Icon(Icons.add)),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.writeATitle,
                        contentPadding: const EdgeInsets.fromLTRB(
                            10, 10, 10, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        )),
                    maxLength: 20,
                    onChanged: (value) {
                      title = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter smth';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          labelText:
                          AppLocalizations.of(context)!.writeADescription,
                          alignLabelWithHint: true,
                          contentPadding: const EdgeInsets.fromLTRB(
                              10, 20, 10, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          )),
                      maxLines: 10,
                      maxLength: 100,
                      onChanged: (value) {
                        description = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter smth';
                        }
                      }),
                  ElevatedButton(
                    onPressed: () {
                      var post = Post(title: title, description: description, postImage: postImage);
                      context.read<PostBloc>().addPost(post);
                      // if (_formKey.currentState!.validate()) {
                      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      //       content: Text(AppLocalizations.of(context)!.sending)));
                      //   posts
                      //       .add({'title': title, 'descr': description})
                      //       .then((value) => print('post added'))
                      //       .catchError((error) => print('failed to add post'));
                      // }
                    },
                    child: Text(AppLocalizations.of(context)!.submit),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
