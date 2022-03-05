import 'dart:io';
import 'package:flutter/material.dart';
import 'package:my_first_project/constants.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCode extends StatefulWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  final qrKey = GlobalKey(debugLabel: 'QR');

  QRViewController? controller;
  Barcode? barcode;

  void onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);

    /// QR ilk defa calisiyorsa
    controller.scannedDataStream.listen(
      (barcode) => setState(() => this.barcode = barcode),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();

    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  // else if (Platform.isIOS) {
  //     await controller!.pauseCamera();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          qrView(context)!,
          Positioned(
            child: buildResultQR(),
            bottom: 10,
          )
        ],
      ),
    );
  }

  buildResultQR() => Container(
        padding: const EdgeInsets.all(12),

        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            color: Colors.white24, borderRadius: BorderRadius.circular(10)),
        child: Text(
          barcode != null ? 'Result : ${barcode!.code}' : 'Scan a code',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      );

  Widget? qrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderWidth: 10,
        borderRadius: 20,
        borderColor: bottomNavItemColor,
        cutOutSize: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }
}
