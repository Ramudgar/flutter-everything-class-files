import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraOpen extends StatefulWidget {
  const CameraOpen({Key? key}) : super(key: key);

  @override
  State<CameraOpen> createState() => _CameraOpenState();
}

class _CameraOpenState extends State<CameraOpen> {
  Future<void> requestCameraPermission() async {
    final cameraStatus = await Permission.camera.status;
    if (cameraStatus.isDenied) {
      await Permission.camera.request();
    }
  }

  Future<void> requestLocationPermission() async {
    final locationStatus = await Permission.location.status;
    if (locationStatus.isDenied) {
      await Permission.location.request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.camera),
                onPressed: () {
                  requestCameraPermission();
                },
                label: const Text('Check Camera permission'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.location_on),
                onPressed: () {
                  requestLocationPermission();
                },
                label: const Text('check location pemission'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
