import 'package:test/test.dart';
import 'package:mongo_dart/mongo_dart.dart';

main() {
  test("Should be able to connect", () async {
    var db = new Db(
        'mongodb://username:password@localhost:27017/test_scram_sha1',
        'test scram sha1');
    var connection = await db.open();
//    bool result = await db.authenticate('username', 'password', connection: connection);
    await db.close();

//    expect(result, isTrue);
  });
}