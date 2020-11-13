import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';

import 'package:vybrnt_mvp/features/organization/application/edit_org_bloc/edit_org_bloc.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/create_org_detail_screen.dart';

class CreateOrgScreen extends HookWidget {
  CreateOrgScreen({Key key}) : super(key: key);
  final Organization newOrg = Organization.empty();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<EditOrgBloc>()..add(EditOrgEvent.getData(newOrg)),
      child: BlocConsumer<EditOrgBloc, EditOrgState>(
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
                        emptyEMember: (_) =>
                            'There are no admins listed for this page, please add one with user and position',
                        unableToUpdate: (_) =>
                            'Name, Abbreviation, and Position fields are required'),
                  ).show(context);
                },
                (_) async {
                  FlushbarHelper.createSuccess(
                          duration: const Duration(seconds: 5),
                          message:
                              'Your new organization page has been created!')
                      .show(context);

                  await Future.delayed(const Duration(seconds: 5));
                  await Navigator.maybePop(context);
                  // TabNavigatorProvider.of(context).pushOrgPage(context,
                  //     orgID: state.org.orgID.getOrCrash());
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              CreateOrganizationPageDetailScreen(org: newOrg),
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
