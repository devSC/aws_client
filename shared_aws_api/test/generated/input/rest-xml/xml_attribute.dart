// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name

import 'dart:convert';
import 'dart:typed_data';

import 'package:shared_aws_api/shared.dart' as _s;
import 'package:shared_aws_api/shared.dart'
    show Uint8ListConverter, Uint8ListListConverter;

export 'package:shared_aws_api/shared.dart' show AwsClientCredentials;

/// XML Attribute
class XMLAttribute {
  final _s.RestXmlProtocol _protocol;
  XMLAttribute({
    @_s.required String region,
    _s.AwsClientCredentials credentials,
    _s.Client client,
    String endpointUrl,
  }) : _protocol = _s.RestXmlProtocol(
          client: client,
          service: 'XMLAttribute',
          region: region,
          credentials: credentials,
          endpointUrl: endpointUrl,
        );

  Future<void> operationName0({
    Grant grant,
  }) async {
    await _protocol.send(
      method: 'POST',
      requestUri: '/',
      payload: grant.toXml('Grant'),
      exceptionFnMap: _exceptionFns,
    );
  }
}

class Grant {
  final Grantee grantee;

  Grant({
    this.grantee,
  });
  _s.XmlElement toXml(String elemName) {
    final $children = <_s.XmlNode>[
      grantee.toXml('Grantee'),
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      [],
      $children.where((e) => e != null),
    );
  }
}

class Grantee {
  final String emailAddress;
  final String type;

  Grantee({
    this.emailAddress,
    this.type,
  });
  _s.XmlElement toXml(String elemName) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('EmailAddress', emailAddress),
      _s.encodeXmlStringValue('xsi:type', type),
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      [],
      $children.where((e) => e != null),
    );
  }
}

final _exceptionFns = <String, _s.AwsExceptionFn>{};
