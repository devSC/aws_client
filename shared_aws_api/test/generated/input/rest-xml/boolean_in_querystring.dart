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

/// Boolean in querystring
class BooleanInQuerystring {
  final _s.RestXmlProtocol _protocol;
  BooleanInQuerystring({
    @_s.required String region,
    _s.AwsClientCredentials credentials,
    _s.Client client,
    String endpointUrl,
  }) : _protocol = _s.RestXmlProtocol(
          client: client,
          service: 'BooleanInQuerystring',
          region: region,
          credentials: credentials,
          endpointUrl: endpointUrl,
        );

  Future<void> operationName0({
    bool boolQuery,
  }) async {
    final queryParams = <String, String>{};
    boolQuery?.let((v) => queryParams['bool-query'] = v.toString());
    await _protocol.send(
      method: 'GET',
      requestUri: '/path',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
  }

  Future<void> operationName1({
    bool boolQuery,
  }) async {
    final queryParams = <String, String>{};
    boolQuery?.let((v) => queryParams['bool-query'] = v.toString());
    await _protocol.send(
      method: 'GET',
      requestUri: '/path',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
  }
}

final _exceptionFns = <String, _s.AwsExceptionFn>{};
