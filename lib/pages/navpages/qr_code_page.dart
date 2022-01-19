// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// class QRPage extends StatefulWidget {
//   final List<CameraDescription>? cameras;
//   const QRPage({Key? key, this.cameras}) : super(key: key);

//   @override
//   _QRPageState createState() => _QRPageState();
// }

// class _QRPageState extends State<QRPage> {
//   late CameraController controller;
//   XFile? pictureFile;
//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(
//       widget.cameras![0],
//       ResolutionPreset.max,
//     );
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return const SizedBox(
//         child: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     }
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8),
//           child: Center(
//             child: SizedBox(
//               height: 400,
//               width: 400,
//               child: CameraPreview(controller),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8),
//           child: ElevatedButton(
//             onPressed: () async {
//               pictureFile = await controller.takePicture();
//               setState(() {});
//             },
//             child: const Text("Capture Image"),
//           ),
//         ),
//         if (pictureFile != null)
//           Image.network(
//             pictureFile!.path,
//             height: 200,
//           )
//       ],
//     );
//   }
// }
