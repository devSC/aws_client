// ignore_for_file: prefer_single_quotes, unused_import

import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';
import '../../../utils.dart';
import 'non_flattened_lists.dart';

void main() {
  test('Non flattened lists 0', () async {
    final client = MockClient((request) async {
      expect(
          request.body,
          equalsXml(
              r'''<OperationRequest xmlns="https://foo/"><ListParam><member>one</member><member>two</member><member>three</member></ListParam></OperationRequest>'''));
      expect(pathAndQuery(request.url), '/2014-01-01/hostedzone');
      expect(request.method, equalsIgnoringCase('POST'));
      return Response('<Response></Response>', 200, headers: {});
    });

    final service = NonFlattenedLists(
        client: client,
        region: 'us-east-1',
        credentials: AwsClientCredentials(accessKey: '', secretKey: ''));

    await service.operationName0(
      listParam: ["one", "two", "three"],
    );
/*
{
  "ListParam": [
    "one",
    "two",
    "three"
  ]
}
*/
  });
}
