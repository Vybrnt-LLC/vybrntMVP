import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {

  const factory ValueFailure.invalidBoolean({ 
    bool failedValue,
  }) = InvalidBoolean<T>;

  const factory ValueFailure.invalidInteger({ 
    int failedValue,
  }) = InvalidInteger<T>;

  const factory ValueFailure.invalidString({ 
    String failedValue, 
  }) = InvalidString<T>;
  
  const factory ValueFailure.invalidTimestamp({ 
    Timestamp failedValue,
  }) = InvalidTimestamp<T>;

   const factory ValueFailure.invalidList({ 
    KtList failedValue,
  }) = InvalidList<T>;

  const factory ValueFailure.invalidUser({ 
    User failedValue,
  }) = InvalidUser<T>;

  const factory ValueFailure.invalidOrganization({ 
    Organization failedValue,
  }) = InvalidOrganization<T>;


  //PostBody & Header (any type of string input)
  const factory ValueFailure.empty({ 
    @required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.exceededLength({ 
    @required T failedValue,
    @required int max, 
  }) = ExceededLength<T>;

  //Header only - (keeps headers short and manageable)
  const factory ValueFailure.multiLine({ 
    @required T failedValue,
  }) = MultiLine<T>;


  //Image 
  const factory ValueFailure.invalidImageSelection({ 
    @required T postImageURL,
    @required bool imageToggled, 
  }) = InvalidImageSelection<T>;
}