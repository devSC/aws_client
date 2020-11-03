// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name

import 'dart:convert';
import 'dart:typed_data';

import 'package:shared_aws_api/shared.dart' as _s;
import 'package:shared_aws_api/shared.dart'
    show
        Uint8ListConverter,
        Uint8ListListConverter,
        rfc822FromJson,
        rfc822ToJson,
        iso8601FromJson,
        iso8601ToJson,
        unixTimestampFromJson,
        unixTimestampToJson;

import 'timestamp_members.meta.dart';
export 'package:shared_aws_api/shared.dart' show AwsClientCredentials;

/// Timestamp members
class TimestampMembers {
  final _s.QueryProtocol _protocol;
  final Map<String, _s.Shape> shapes;

  TimestampMembers({
    @_s.required String region,
    _s.AwsClientCredentials credentials,
    _s.Client client,
  })  : _protocol = _s.QueryProtocol(
          client: client,
          service: 'TimestampMembers',
          region: region,
          credentials: credentials,
        ),
        shapes = shapesJson
            .map((key, value) => MapEntry(key, _s.Shape.fromJson(value)));

  Future<OutputShape> operationName0() async {
    final $request = <String, dynamic>{};
    final $result = await _protocol.send(
      $request,
      action: 'OperationName',
      version: '2020-01-01',
      method: 'POST',
      requestUri: '/',
      exceptionFnMap: _exceptionFns,
      shapes: shapes,
    );
    return OutputShape.fromXml($result);
  }
}

class OutputShape {
  final TimeContainer structMember;
  final DateTime timeArg;
  final DateTime timeCustom;
  final DateTime timeFormat;

  OutputShape({
    this.structMember,
    this.timeArg,
    this.timeCustom,
    this.timeFormat,
  });
  factory OutputShape.fromXml(_s.XmlElement elem) {
    return OutputShape(
      structMember: _s
          .extractXmlChild(elem, 'StructMember')
          ?.let((e) => TimeContainer.fromXml(e)),
      timeArg: _s.extractXmlDateTimeValue(elem, 'TimeArg'),
      timeCustom: _s.extractXmlDateTimeValue(elem, 'TimeCustom'),
      timeFormat: _s.extractXmlDateTimeValue(elem, 'TimeFormat'),
    );
  }
}

class TimeContainer {
  final DateTime bar;
  final DateTime foo;

  TimeContainer({
    this.bar,
    this.foo,
  });
  factory TimeContainer.fromXml(_s.XmlElement elem) {
    return TimeContainer(
      bar: _s.extractXmlDateTimeValue(elem, 'bar'),
      foo: _s.extractXmlDateTimeValue(elem, 'foo'),
    );
  }
}

final _exceptionFns = <String, _s.AwsExceptionFn>{};
