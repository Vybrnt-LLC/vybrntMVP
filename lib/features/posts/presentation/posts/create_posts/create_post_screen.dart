import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/posts/application/create_post/create_post_form_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/create_posts/create_post_dropdown.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/create_posts/post_detail_categories.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/create_posts/post_detail_field.dart';

class CreatePostScreen extends HookWidget {
  final Post editedPost;

  CreatePostScreen({Key key, @required this.editedPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;

    return BlocProvider(
      create: (context) => getIt<CreatePostFormBloc>()
        ..add(CreatePostFormEvent.initialized(currentUserID)),
      child: BlocConsumer<CreatePostFormBloc, CreatePostFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: failure.map(
                      // Use localized strings here in your apps
                      insufficientPermissions: (_) =>
                          'Insufficient permissions ❌',
                      unexpected: (_) =>
                          'Unexpected error occured, please contact support.',
                      emptyField: (_) =>
                          'A necessary field has been left blank, please fill out all starred text fields.',
                    ),
                  ).show(context);
                },
                (_) {
                  // Can't be just a simple pop. If another route (like a Flushbar) is on top of stack, we'll need to pop even that to get to
                  // the overview page.
                  Navigator.maybePop(context);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const CreatePostScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                // Not within a Scaffold. We have to get the TextStyle from a theme ourselves.
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CreatePostScaffold extends StatelessWidget {
  const CreatePostScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            centerTitle: true,
            title: BlocBuilder<CreatePostFormBloc, CreatePostFormState>(
              buildWhen: (p, c) => p.isEditing != c.isEditing,
              builder: (context, state) => Text(
                state.isEditing ? 'Edit an event' : 'CREATE A POST',
                style: GoogleFonts.getFont('Barlow Condensed',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 28),
              ),
            ),
            actions: <Widget>[
              Builder(
                builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.check),
                    onPressed: () {
                      context
                          .bloc<CreatePostFormBloc>()
                          .add(const CreatePostFormEvent.saved());
                    },
                  );
                },
              ),
            ],
          ),
          body: BlocBuilder<CreatePostFormBloc, CreatePostFormState>(
            buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
            builder: (context, state) {
              return Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: const CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(child: PostDestinationField()),
                    SliverToBoxAdapter(child: DropDownMenu()),
                    SliverToBoxAdapter(child: PostDetailField()),
                  ],
                ),
              );
            },
          )),
    );
  }
}
