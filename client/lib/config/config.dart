import 'package:flutter_dotenv/flutter_dotenv.dart';

String getServerHost() {
  return DotEnv().env['SERVER_HOST'];
}

int getServerPort() {
  return int.parse(DotEnv().env['SERVER_PORT']);
}
