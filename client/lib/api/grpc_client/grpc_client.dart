import 'package:grpc/grpc.dart';

import 'package:todo_client/config/config.dart';

ClientChannel createChannel() {
  return ClientChannel(
    getServerHost(),
    port: getServerPort(),
    options: const ChannelOptions(
      // todo: secure
      credentials: ChannelCredentials.insecure(),
    ),
  );
}
