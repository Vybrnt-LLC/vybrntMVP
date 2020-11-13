// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'faq_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FAQDto _$FAQDtoFromJson(Map<String, dynamic> json) {
  return _FAQDto.fromJson(json);
}

class _$FAQDtoTearOff {
  const _$FAQDtoTearOff();

  _FAQDto call(
      {@JsonKey(ignore: true) String faqID,
      @required String question,
      @required String answer,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _FAQDto(
      faqID: faqID,
      question: question,
      answer: answer,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $FAQDto = _$FAQDtoTearOff();

mixin _$FAQDto {
  @JsonKey(ignore: true)
  String get faqID;
  String get question;
  String get answer;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $FAQDtoCopyWith<FAQDto> get copyWith;
}

abstract class $FAQDtoCopyWith<$Res> {
  factory $FAQDtoCopyWith(FAQDto value, $Res Function(FAQDto) then) =
      _$FAQDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String faqID,
      String question,
      String answer,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$FAQDtoCopyWithImpl<$Res> implements $FAQDtoCopyWith<$Res> {
  _$FAQDtoCopyWithImpl(this._value, this._then);

  final FAQDto _value;
  // ignore: unused_field
  final $Res Function(FAQDto) _then;

  @override
  $Res call({
    Object faqID = freezed,
    Object question = freezed,
    Object answer = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      faqID: faqID == freezed ? _value.faqID : faqID as String,
      question: question == freezed ? _value.question : question as String,
      answer: answer == freezed ? _value.answer : answer as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$FAQDtoCopyWith<$Res> implements $FAQDtoCopyWith<$Res> {
  factory _$FAQDtoCopyWith(_FAQDto value, $Res Function(_FAQDto) then) =
      __$FAQDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String faqID,
      String question,
      String answer,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$FAQDtoCopyWithImpl<$Res> extends _$FAQDtoCopyWithImpl<$Res>
    implements _$FAQDtoCopyWith<$Res> {
  __$FAQDtoCopyWithImpl(_FAQDto _value, $Res Function(_FAQDto) _then)
      : super(_value, (v) => _then(v as _FAQDto));

  @override
  _FAQDto get _value => super._value as _FAQDto;

  @override
  $Res call({
    Object faqID = freezed,
    Object question = freezed,
    Object answer = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_FAQDto(
      faqID: faqID == freezed ? _value.faqID : faqID as String,
      question: question == freezed ? _value.question : question as String,
      answer: answer == freezed ? _value.answer : answer as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_FAQDto with DiagnosticableTreeMixin implements _FAQDto {
  _$_FAQDto(
      {@JsonKey(ignore: true) this.faqID,
      @required this.question,
      @required this.answer,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(question != null),
        assert(answer != null),
        assert(serverTimeStamp != null);

  factory _$_FAQDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FAQDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String faqID;
  @override
  final String question;
  @override
  final String answer;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FAQDto(faqID: $faqID, question: $question, answer: $answer, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FAQDto'))
      ..add(DiagnosticsProperty('faqID', faqID))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('answer', answer))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FAQDto &&
            (identical(other.faqID, faqID) ||
                const DeepCollectionEquality().equals(other.faqID, faqID)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(faqID) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(answer) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$FAQDtoCopyWith<_FAQDto> get copyWith =>
      __$FAQDtoCopyWithImpl<_FAQDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FAQDtoToJson(this);
  }
}

abstract class _FAQDto implements FAQDto {
  factory _FAQDto(
          {@JsonKey(ignore: true) String faqID,
          @required String question,
          @required String answer,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_FAQDto;

  factory _FAQDto.fromJson(Map<String, dynamic> json) = _$_FAQDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get faqID;
  @override
  String get question;
  @override
  String get answer;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$FAQDtoCopyWith<_FAQDto> get copyWith;
}
