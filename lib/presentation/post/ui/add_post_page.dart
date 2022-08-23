import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/l10n/gen/app_localizations.dart';
import 'package:instagram_clone/presentation/widgets/post_card.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  _AddPostPageState createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          AppLocalizations.of(context)!.write,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 3,
        ),
        const PostCard(
          post: null,
        ),
      ],
    );
  }
}
