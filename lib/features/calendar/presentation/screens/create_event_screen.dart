import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/application/create_event_bloc/create_event_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/datetime_field.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/dropdown_menu.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_destination_field.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_detail_field.dart';

class CreateEventScreen extends HookWidget {
  final Event editedEvent;

  CreateEventScreen({Key key, @required this.editedEvent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;

    return BlocProvider(
      create: (context) => getIt<CreateEventBloc>()
        ..add(
            CreateEventEvent.initialized(optionOf(editedEvent), currentUserID)),
      child: BlocConsumer<CreateEventBloc, CreateEventState>(
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
                        unableToUpdate: (_) =>
                            "Couldn't update the event. Was it deleted from another device?",
                        unexpected: (_) =>
                            'Unexpected error occured, please contact support.'),
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
              const CreateEventScaffold(),
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

class CreateEventScaffold extends StatelessWidget {
  const CreateEventScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: true,
            title: BlocBuilder<CreateEventBloc, CreateEventState>(
              buildWhen: (p, c) => p.isEditing != c.isEditing,
              builder: (context, state) => Text(
                state.isEditing ? 'Edit an event' : 'New Event',
                style: Theme.of(context)
                    .appBarTheme
                    .textTheme
                    .headline1
                    .copyWith(fontSize: 26.0),
              ),
            ),
            actions: <Widget>[
              Builder(
                builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.check),
                    onPressed: () {
                      context
                          .bloc<CreateEventBloc>()
                          .add(const CreateEventEvent.saved());
                    },
                  );
                },
              ),
            ],
          ),
          body: BlocBuilder<CreateEventBloc, CreateEventState>(
            buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
            builder: (context, state) {
              return Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: const CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(child: EventDestinationField()),
                    SliverToBoxAdapter(child: DropDownMenu()),
                    SliverToBoxAdapter(child: DateTimeField()),
                    SliverToBoxAdapter(child: EventDetailField()),
                  ],
                ),
              );
            },
          )),
    );
  }
}
