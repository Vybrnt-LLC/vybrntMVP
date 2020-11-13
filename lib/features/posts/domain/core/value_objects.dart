import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/features/posts/domain/core/errors.dart';
import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;    
  
  T getOrCrash() {    
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l), 
      (r) => right(unit)
    );
  }
  bool isValid()=> value.isRight();
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is ValueObject &&
      o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => '\nValue (value: $value)';
}