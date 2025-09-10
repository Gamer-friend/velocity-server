import 'dart:io';
import 'dart:convert';

const String listenHost = '0.0.0.0';
const int listenPort = 25577;

const String targetHost = '127.0.0.1';
const int targetPort = 25565;

void main() async {
  final server = await ServerSocket.bind(listenHost, listenPort);
  print('Proxy listening on $listenHost:$listenPort → $targetHost:$targetPort');

  await for (Socket client in server) {
    print('Client connected: ${client.remoteAddress.address}:${client.remotePort}');
    _handleConnection(client);
  }
}

void _handleConnection(Socket client) async {
  try {
    final target = await Socket.connect(targetHost, targetPort);
    print('Connected to target server');

    // Pipe client → target
    client.listen(
      (data) {
        target.add(data);
      },
      onDone: () {
        print('Client disconnected');
        target.destroy();
      },
      onError: (e) {
        print('Client error: $e');
        target.destroy();
      },
      cancelOnError: true,
    );

    // Pipe target → client
    target.listen(
      (data) {
        client.add(data);
      },
      onDone: () {
        print('Target server disconnected');
        client.destroy();
      },
      onError: (e) {
        print('Target error: $e');
        client.destroy();
      },
      cancelOnError: true,
    );
  } catch (e) {
    print('Connection failed: $e');
    client.destroy();
  }
}
