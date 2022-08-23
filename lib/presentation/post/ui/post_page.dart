import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/l10n/gen/app_localizations.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final Stream<QuerySnapshot> posts =
      FirebaseFirestore.instance.collection('posts').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.read,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  color: Theme.of(context).colorScheme.onSecondary,
                  child: StreamBuilder<QuerySnapshot>(
                    stream: posts,
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return Text(AppLocalizations.of(context)!.smthWrong);
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return Column(
                          children: [
                            Text(AppLocalizations.of(context)!.loading),
                            const CircularProgressIndicator(),
                          ],
                        );
                      }
                      final data = snapshot.requireData;
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemCount: data.size,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("User###"),
                              PostListTile(
                                  title: Text(
                                      AppLocalizations.of(context)!.title +
                                          '${data.docs[index]['title']}'),
                                  subtitle: Text(AppLocalizations.of(context)!
                                          .description +
                                      '${data.docs[index]['descr']}')),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.comment),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class PostListTile extends StatelessWidget {
  final Widget title;
  final Widget subtitle;

  const PostListTile({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          title: title,
          subtitle: subtitle,
        ),
      ),
    );
  }
}
