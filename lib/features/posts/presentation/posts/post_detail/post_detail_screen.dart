import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/posts/application/comment_actor/comment_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/presentation/core/comment_tile.dart';
import 'package:vybrnt_mvp/features/user/presentation/widgets/post_card.dart';

class PostDetailScreen extends StatefulWidget {
  final Post post;
  final Color color;
  final String backgroundImage;

  const PostDetailScreen(
      {Key key,
      this.post,
      this.color = Colors.black,
      this.backgroundImage = 'assets/categories/home_pattern.jpg'})
      : super(key: key);
  @override
  _PostDetailScreenState createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  final TextEditingController _commentController = TextEditingController();
  bool _isCommenting = false;
  _buildCommentTF() {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return IconTheme(
      data: IconThemeData(
        color: _isCommenting
            ? Theme.of(context).accentColor
            : Theme.of(context).disabledColor,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 10.0),
            Expanded(
              child: TextField(
                controller: _commentController,
                textCapitalization: TextCapitalization.sentences,
                onChanged: (comment) {
                  setState(() {
                    _isCommenting = comment.length > 0;
                  });
                  context
                      .bloc<PostActorBloc>()
                      .add(PostActorEvent.commentBodyChanged(comment));
                },
                decoration:
                    InputDecoration.collapsed(hintText: 'Write a comment...'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  if (_isCommenting) {
                    context.bloc<PostActorBloc>().add(
                        PostActorEvent.submitComment(
                            currentUserID, widget.post));
                    _commentController.clear();
                    setState(() {
                      _isCommenting = false;
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return Container(
      color: Colors.blue,
      child: SafeArea(
        top: false,
        child: BlocBuilder<PostActorBloc, PostActorState>(
            builder: (context, state) {
          return Scaffold(
              resizeToAvoidBottomInset: false,
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: _buildCommentTF()),
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    floating: true,
                    //expandedHeight: 60.0,
                    backgroundColor: widget.color,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: BorderedText(
                            child: Text(
                              'Post',
                              style: GoogleFonts.getFont('Barlow Condensed',
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 30),
                            ),
                            strokeColor: widget.color,
                            strokeWidth: 1.0),
                        background: Image.asset(
                          widget.backgroundImage,
                          fit: BoxFit.fitWidth,
                        )),
                    // Image.asset('assets/vybrnt_title_clear.png',
                    //     width: 200, fit: BoxFit.cover),
                  ),
                  SliverToBoxAdapter(
                      child: BlocProvider<PostActorBloc>(
                          create: (context) => getIt<PostActorBloc>()
                            ..add(PostActorEvent.getData(widget.post,
                                currentUserID: currentUserID,
                                senderID: widget.post.senderID.getOrCrash())),
                          child: Container(
                              child: PostCard(
                                  //user: _profileUser,
                                  post: widget.post,
                                  color: widget.color)))),
                  SliverToBoxAdapter(child: Divider(height: 1.0)),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        // This builder is called for each child.
                        // In this example, we just number each list item.
                        context
                            .bloc<PostActorBloc>()
                            .add(PostActorEvent.setCurrentScreen());
                        return BlocProvider<CommentActorBloc>(
                            create: (context) => getIt<CommentActorBloc>()
                              ..add(CommentActorEvent.getData(
                                  state.comments[index])),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CommentTile(
                                  comment: state.comments[index],
                                  post: widget.post),
                            ));
                      },
                      childCount: state.comments.size,
                    ),
                  ),
                ],
              ));
        }),
      ),
    );
  }
}
