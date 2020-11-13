// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'faq.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FAQTearOff {
  const _$FAQTearOff();

  _FAQ call(
      {@required UniqueId faqID,
      @required String question,
      @required String answer}) {
    return _FAQ(
      faqID: faqID,
      question: question,
      answer: answer,
    );
  }
}

// ignore: unused_element
const $FAQ = _$FAQTearOff();

mixin _$FAQ {
  UniqueId get faqID;
  String get question;
  String get answer;

  $FAQCopyWith<FAQ> get copyWith;
}

abstract class $FAQCopyWith<$Res> {
  factory $FAQCopyWith(FAQ value, $Res Function(FAQ) then) =
      _$FAQCopyWithImpl<$Res>;
  $Res call({UniqueId faqID, String question, String answer});
}

class _$FAQCopyWithImpl<$Res> implements $FAQCopyWith<$Res> {
  _$FAQCopyWithImpl(this._value, this._then);

  final FAQ _value;
  // ignore: unused_field
  final $Res Function(FAQ) _then;

  @override
  $Res call({
    Object faqID = freezed,
    Object question = freezed,
    Object answer = freezed,
  }) {
    return _then(_value.copyWith(
      faqID: faqID == freezed ? _value.faqID : faqID as UniqueId,
      question: question == freezed ? _value.question : question as String,
      answer: answer == freezed ? _value.answer : answer as String,
    ));
  }
}

abstract class _$FAQCopyWith<$Res> implements $FAQCopyWith<$Res> {
  factory _$FAQCopyWith(_FAQ value, $Res Function(_FAQ) then) =
      __$FAQCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId faqID, String question, String answer});
}

class __$FAQCopyWithImpl<$Res> extends _$FAQCopyWithImpl<$Res>
    implements _$FAQCopyWith<$Res> {
  __$FAQCopyWithImpl(_FAQ _value, $Res Function(_FAQ) _then)
      : super(_value, (v) => _then(v as _FAQ));

  @override
  _FAQ get _value => super._value as _FAQ;

  @override
  $Res call({
    Object faqID = freezed,
    Object question = freezed,
    Object answer = freezed,
  }) {
    return _then(_FAQ(
      faqID: faqID == freezed ? _value.faqID : faqID as UniqueId,
      question: question == freezed ? _value.question : question as String,
      answer: answer == freezed ? _value.answer : answer as String,
    ));
  }
}

class _$_FAQ implements _FAQ {
  const _$_FAQ(
      {@required this.faqID, @required this.question, @required this.answer})
      : assert(faqID != null),
        assert(question != null),
        assert(answer != null);

  @override
  final UniqueId faqID;
  @override
  final String question;
  @override
  final String answer;

  @override
  String toString() {
    return 'FAQ(faqID: $faqID, question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FAQ &&
            (identical(other.faqID, faqID) ||
                const DeepCollectionEquality().equals(other.faqID, faqID)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(faqID) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(answer);

  @override
  _$FAQCopyWith<_FAQ> get copyWith =>
      __$FAQCopyWithImpl<_FAQ>(this, _$identity);
}

abstract class _FAQ implements FAQ {
  const factory _FAQ(
      {@required UniqueId faqID,
      @required String question,
      @required String answer}) = _$_FAQ;

  @override
  UniqueId get faqID;
  @override
  String get question;
  @override
  String get answer;
  @override
  _$FAQCopyWith<_FAQ> get copyWith;
}
