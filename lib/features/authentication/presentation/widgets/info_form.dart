import 'dart:io';
import 'package:collection/collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;
import 'package:auto_route/auto_route.dart';
import 'package:vybrnt_mvp/features/authentication/application/onboarding_info/onboarding_info_bloc.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/models/university.dart';

class InfoForm extends StatefulWidget {
  @override
  _InfoFormState createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  final eq = const ListEquality().equals;
  File _profileImage;
  String _usernameError;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingInfoBloc, OnboardingInfoState>(
        listener: (context, state) {
      state.saveFailureOrSuccessOption.fold(() {}, (either) {
        either.fold((failure) {
          FlushbarHelper.createError(
              message: failure.map(
            saveFailed: (_) => 'An error has occured',
            loadFailed: (_) => '',
            unavailableUsername: (_) => '',
            invalidUsername: (_) => '',
          )).show(context);
        }, (_) {
          context.navigator.push(route.Routes.onboardingVyb);
        });
      });

      // state.usernameFailureOrSuccessOption.fold(() {}, (either) {
      //   either.fold((failure) {
      //     setState(() => _usernameError = failure.map(
      //           saveFailed: (_) => '',
      //           loadFailed: (_) => '',
      //           unavailableUsername: (_) => 'This username is unavailable',
      //           invalidUsername: (_) => 'Invalid username',
      //         ));
      //   }, (_) {
      //     setState(() => _usernameError = null);
      //   });
      // }
      // );
    }, buildWhen: (p, c) {
      if (!eq(p.listOfUniversities, c.listOfUniversities) ||
          !eq(p.listOfColleges, c.listOfColleges) ||
          !eq(p.listOfMajors, c.listOfMajors) ||
          p.isUsernameTaken != c.isUsernameTaken) {
        return true;
      } else {
        return false;
      }
    }, builder: (context, state) {
      return Stack(children: <Widget>[
        Scaffold(
          body: FormBuilder(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 70),
                  GFAvatar(
                    size: 100,
                    backgroundColor: Colors.grey,
                    backgroundImage:
                        _displayProfileImage(state.user.profileImageUrl),
                    shape: GFAvatarShape.standard,
                  ),
                  FlatButton(
                    onPressed: () async {
                      final FilePickerResult result = await FilePicker.platform
                          .pickFiles(type: FileType.image);

                      if (result != null) {
                        final File file = File(result.files.single.path);

                        final File imageFile = await _cropImage(file);

                        if (imageFile != null) {
                          setState(() {
                            _profileImage = imageFile;
                          });
                        }
                      }
                      context.bloc<OnboardingInfoBloc>().add(
                          OnboardingInfoEvent.uploadUserProfileImage(
                              state.user.profileImageUrl, _profileImage));
                    },
                    child: Text(
                      'Change Profile Image',
                      style: TextStyle(
                          color: Theme.of(context).accentColor, fontSize: 15.0),
                    ),
                  ),
                  const SizedBox(height: 15),
                  FormBuilderTextField(
                    name: 'username',
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.account_circle),
                      labelText: 'Username',
                      errorText: _usernameError,
                    ),
                    onChanged: (value) {
                      context
                          .bloc<OnboardingInfoBloc>()
                          .add(OnboardingInfoEvent.usernameChanged(value));
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context),
                      (_) => state.isUsernameTaken
                          ? 'Username is already taken'
                          : null,
                      (_) => Username(_).value.fold(
                          (f) => f.maybeMap(
                              invalidUsername: (_) => 'Invalid username',
                              orElse: () => null),
                          (_) => null)
                    ]),

                    //autocorrect: false,
                    // onChanged: (value) => context
                    //     .bloc<SignInFormBloc>()
                    //     .add(SignInFormEvent.emailChanged(value.trim())),
                    // validator: (_) => context
                    //     .bloc<SignInFormBloc>()
                    //     .state
                    //     .emailAddress
                    //     .value
                    //     .fold(
                    //         (f) => f.maybeMap(
                    //             invalidEmail: (_) => 'Invalid Email',
                    //             orElse: () => null),
                    //         (_) => null)
                  ),
                  const SizedBox(height: 18),
                  FormBuilderTextField(
                    name: 'name',
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Name (Optional)',
                    ),
                    initialValue: state.user.profileName,
                    //autocorrect: false,
                    // onChanged: (value) => context
                    //     .bloc<SignInFormBloc>()
                    //     .add(SignInFormEvent.emailChanged(value.trim())),
                    // validator: (_) => context
                    //     .bloc<SignInFormBloc>()
                    //     .state
                    //     .emailAddress
                    //     .value
                    //     .fold(
                    //         (f) => f.maybeMap(
                    //             invalidEmail: (_) => 'Invalid Email',
                    //             orElse: () => null),
                    //         (_) => null)
                  ),
                  const SizedBox(height: 18),
                  FormBuilderSearchableDropdown<University>(
                      name: 'university',
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.school_rounded),
                        labelText: 'University',
                      ),
                      dropdownBuilder: (context, selectedItem, itemAsString) {
                        if (selectedItem != null) {
                          return DropdownMenuItem(
                              key: ObjectKey(selectedItem),
                              child: Text(selectedItem.name));
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                      itemAsString: (university) => university.name,
                      // dropdownBuilder: (context, selectedItem, itemAsString) {
                      //   if (state.listOfUniversities.isNotEmpty) {
                      //     return DropdownMenuItem(
                      //         key: ObjectKey(selectedItem),
                      //         child: Text(selectedItem.name));
                      //   } else {
                      //     return const SizedBox.shrink();
                      //   }
                      // },
                      onChanged: (value) {
                        context
                            .bloc<OnboardingInfoBloc>()
                            .add(OnboardingInfoEvent.universitySelected(value));
                      },
                      items: state.listOfUniversities),
                  const SizedBox(height: 18),
                  FormBuilderSearchableDropdown(
                      name: 'campus',
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.school_rounded),
                        labelText: 'Campus',
                      ),
                      items: state.listOfCampuses),
                  const SizedBox(height: 18),
                  FormBuilderChipsInput<String>(
                    name: 'college',
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school_rounded),
                      labelText: 'College',
                    ),
                    onChanged: (value) => context
                        .bloc<OnboardingInfoBloc>()
                        .add(OnboardingInfoEvent.collegesUpdated(value)),
                    findSuggestions: (String query) {
                      if (query.isNotEmpty) {
                        final lowercaseQuery = query.toLowerCase();
                        return state.listOfColleges.where((college) {
                          return college
                              .toLowerCase()
                              .contains(query.toLowerCase());
                        }).toList(growable: false)
                          ..sort((a, b) => a
                              .toLowerCase()
                              .indexOf(lowercaseQuery)
                              .compareTo(
                                  b.toLowerCase().indexOf(lowercaseQuery)));
                      } else {
                        return const <String>[];
                      }
                    },
                    suggestionBuilder: (context, state, college) {
                      return ListTile(
                        key: ObjectKey(college),
                        title: Text(college),
                        onTap: () => state.selectSuggestion(college),
                      );
                    },
                    chipBuilder: (context, state, college) {
                      return InputChip(
                        key: ObjectKey(college),
                        label: Text(college),
                        onDeleted: () => state.deleteChip(college),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      );
                    },
                  ),
                  const SizedBox(height: 18),
                  FormBuilderChipsInput<String>(
                    name: 'major',
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school_rounded),
                      labelText: 'Major',
                    ),
                    findSuggestions: (String query) {
                      if (query.isNotEmpty) {
                        final lowercaseQuery = query.toLowerCase();
                        return state.listOfMajors.where((college) {
                          return college
                              .toLowerCase()
                              .contains(query.toLowerCase());
                        }).toList(growable: false)
                          ..sort((a, b) => a
                              .toLowerCase()
                              .indexOf(lowercaseQuery)
                              .compareTo(
                                  b.toLowerCase().indexOf(lowercaseQuery)));
                      } else {
                        return const <String>[];
                      }
                    },
                    suggestionBuilder: (context, state, major) {
                      return ListTile(
                        key: ObjectKey(major),
                        title: Text(major),
                        onTap: () => state.selectSuggestion(major),
                      );
                    },
                    chipBuilder: (context, state, college) {
                      return InputChip(
                        key: ObjectKey(college),
                        label: Text(college),
                        onDeleted: () => state.deleteChip(college),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      );
                    },
                  ),
                  const SizedBox(height: 150),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                        onPressed: () {
                          _formKey.currentState.save();
                          final formData = _formKey.currentState.value;
                          context.bloc<OnboardingInfoBloc>().add(
                              OnboardingInfoEvent.saveOnboardingInfo(formData));
                        },
                        child: const Text('Next')),
                  )
                ],
              ),
            ),
          ),
        ),
        SavingInProgressOverlay(isSaving: state.isSaving),
      ]);
    });
  }

  ImageProvider<Object> _displayProfileImage(String profileImageUrl) {
    // No new profile image
    if (_profileImage == null) {
      // No existing profile image
      if (profileImageUrl.isEmpty) {
        // Display placeholder
        return Image.asset('assets/images/user_placeholder.png').image;
      } else {
        // User profile image exists
        return CachedNetworkImageProvider(profileImageUrl);
      }
    } else {
      // New profile image
      return FileImage(_profileImage);
    }
  }

  Future<File> _cropImage(File imageFile) async {
    final File croppedImage = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
      aspectRatio: const CropAspectRatio(
        ratioX: 1.0,
        ratioY: 1.0,
      ),
    );
    return croppedImage;
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
