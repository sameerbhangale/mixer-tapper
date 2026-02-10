class BluetoothOutputAdapter {
  Future<List<String>> listOutputDevices() async {
    // TODO: enumerate platform audio routes
    return <String>[];
  }

  Future<void> selectDevice(String deviceId) async {
    // TODO: route audio to selected output
  }
}
