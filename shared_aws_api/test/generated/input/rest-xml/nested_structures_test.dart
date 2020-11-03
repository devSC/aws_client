// ignore_for_file: prefer_single_quotes, unused_import

import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';
import '../../../utils.dart';
import 'nested_structures.dart';

void main() {
  test('Nested structures 0', () async {
    final client = MockClient((request) async {
      expect(
          request.body,
          equalsXml(
              r'''<OperationRequest xmlns="https://foo/"><SubStructure /><Description>baz</Description></OperationRequest>'''));
      expect(pathAndQuery(request.url), '/2014-01-01/hostedzone');
      expect(request.method, equalsIgnoringCase('POST'));
      return Response('<Response></Response>', 200, headers: {});
    });

    final service = NestedStructures(
        client: client,
        region: 'us-east-1',
        credentials: AwsClientCredentials(accessKey: '', secretKey: ''));

    await service.operationName0(
      description: "baz",
      subStructure: SubStructure(),
    );
/*
{
  "SubStructure": {},
  "Description": "baz"
}
*/
  });
}
