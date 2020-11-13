import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';

class ErrorPostCard extends StatelessWidget {
  final Post post;

  const ErrorPostCard({
    Key key,
    @required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).errorColor,
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width / 1.1,
          child: Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Invalid Post, please contact support',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Flexible(
                    child: Text(
                      'Details are for nerds, like the Vybrnt Dev Team: 724-553-4945',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      post.failureOption.fold(() => '', (f) => f.toString()),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )),
        ));
  }
}
