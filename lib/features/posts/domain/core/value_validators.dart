import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'failures.dart';

/*
PostID - 
SenderID - 
EventID -
OrgID - 
*/
Either<ValueFailure<String>, String> validateID(String input) {
  if (input.length > -1) {
    return right(input);
  } else {
    return left(ValueFailure.invalidString(failedValue: "ID " + input));
  }
}

Either<ValueFailure<String>, String> validateSenderID(String input) {
  if (input.length > 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidString(failedValue: "Sender ID " + input));
  }
}

Either<ValueFailure<String>, String> validateEventID(String input) {
  if (input.length > 0) {
    return right(input);
  } else if (input.startsWith("Empty")) {
    return right("");
  } else {
    return left(ValueFailure.invalidString(failedValue: "Event ID " + input));
  }
}

Either<ValueFailure<String>, String> validateOrgID(String input) {
  if (input.length > 0) {
    return right(input);
  } else if (input.startsWith("Empty")) {
    return right("");
  } else {
    return left(ValueFailure.invalidString(failedValue: "Org ID " + input));
  }
}

/*
SenderType - 
SenderName - 
SenderProfileImageURL - 
OrgName - 
OrgImageURL -
*/
Either<ValueFailure<String>, String> validatePostType(String input) {
  //
  if (input.length >= 0) {
    return right(input);
  } else if (input.startsWith("Empty")) {
    return right("");
  } else {
    return left(ValueFailure.invalidString(failedValue: "PostType " + input));
  }
}

Either<ValueFailure<String>, String> validateSenderImageURL(String input) {
  //
  if (input.length > 0 && input.length < 300) {
    return right(input);
  } else {
    return left(
        ValueFailure.invalidString(failedValue: "Sender ImageURL " + input));
  }
}

Either<ValueFailure<String>, String> validateOrgName(String input) {
  //
  if (input.length > 0 && input.length < 300) {
    return right(input);
  } else if (input.startsWith("Empty")) {
    return right("");
  } else {
    return left(ValueFailure.invalidString(failedValue: "Org Name " + input));
  }
}

/*
Header - 
PostBody - 
PostImageURL - 

PrimaryColor - 
SecondaryColor
LikeCount - 
Commentable? - 
CommentCount -
Repostable? - 
RepostCount -
*/
Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  //
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: "EMPTY STRING" + input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  //
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceededLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String header) {
  if (!header.contains('\n')) {
    return right(header);
  } else {
    return left(ValueFailure.multiLine(failedValue: header));
  }
}

Either<ValueFailure<String>, String> validatePostHeader(String input) {
  if (input.startsWith("Empty")) {
    return right("");
  } else if (input.length > -1 && input.length < 100) {
    return right(input);
  } else {
    return left(ValueFailure.invalidString(failedValue: "Post Header" + input));
  }
}

Either<ValueFailure<String>, String> validatePostBody(String input) {
  if (input.startsWith("Empty")) {
    return right("");
  } else if (input.length > -1 && input.length < 400) {
    return right(input);
  } else {
    return left(ValueFailure.invalidString(failedValue: "PostBody  " + input));
  }
}

Either<ValueFailure<String>, String> validateURL(String input) {
  //
  if (input.startsWith("Empty")) {
    return right("");
  } else if (((input.length > 0) /*&& (input.startsWith("https://"))*/)) {
    return right(input);
  } else if (input.length == 0) {
    return right(input);
  } else {
    return left(
        ValueFailure.invalidString(failedValue: "Post Image URL " + input));
  }
}

Either<ValueFailure<String>, String> validatePrimaryColor(String input) {
  //
  if (input.length > 0 && input.length < 100) {
    return right(input);
  } else {
    return left(ValueFailure.invalidString(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSecondaryColor(String input) {
  //
  if (input.length > 0 && input.length < 100) {
    return right(input);
  } else {
    return left(ValueFailure.invalidString(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateLikeCount(int input) {
  //
  if (input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidInteger(failedValue: input));
  }
}

Either<ValueFailure<bool>, bool> validateCommentable(bool input) {
  if (input.toString().length != 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidBoolean(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateCommentCount(int input) {
  //
  if (input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidInteger(failedValue: input));
  }
}

Either<ValueFailure<bool>, bool> validateRepostable(bool input) {
  //
  if (input.toString().length != 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidBoolean(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateRepostCount(int input) {
  //
  if (input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidInteger(failedValue: input));
  }
}

Either<ValueFailure<KtMutableList>, KtMutableList> validateCommentsSection(
    KtMutableList input) {
  //
  if (input.isEmpty() || input.size > 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidList(failedValue: input));
  }
}

/*
PostTimestamp  - 
 */

Either<ValueFailure<Timestamp>, Timestamp> validateTime(Timestamp input) {
  //
  if (input.toDate().isBefore(DateTime.now())) {
    return right(input);
  } else {
    return left(ValueFailure.invalidTimestamp(failedValue: input));
  }
}
