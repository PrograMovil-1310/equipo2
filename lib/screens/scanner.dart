import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanneraPage extends StatefulWidget {
  const ScanneraPage({super.key});

  @override
  State<ScanneraPage> createState() => _ScanneraPageState();
}

class _ScanneraPageState extends State<ScanneraPage> {
  String _scanBarcodeResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (_) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.qr_code,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: scanBarcodeNormal,
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  textStyle: TextStyle(fontSize: 18.0),
                ),
                child: Text("Escáner de Código de Barras"),
              ),
              ElevatedButton(
                onPressed: scnQR,
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  textStyle: TextStyle(fontSize: 18.0),
                ),
                child: Text("Escáner Código QR"),
              ),
              ElevatedButton(
                onPressed: startBarcodeStream,
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  textStyle: TextStyle(fontSize: 18.0),
                ),
                child: Text("Búsqueda de Código de Barras"),
              ),
              SizedBox(height: 20),
              Text(
                "Resultado: $_scanBarcodeResult",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  void scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        "cancel",
        true,
        ScanMode.BARCODE,
      );
    } on PlatformException {
      barcodeScanRes = "Failed to get platform version";
    }
    setState(() {
      _scanBarcodeResult = barcodeScanRes;
    });
  }

  void scnQR() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        "cancel",
        true,
        ScanMode.QR,
      );
    } on PlatformException {
      barcodeScanRes = "Failed to get platform version";
    }
    setState(() {
      _scanBarcodeResult = barcodeScanRes;
    });
  }

  void startBarcodeStream() async {
    try {
      await FlutterBarcodeScanner.getBarcodeStreamReceiver(
        "#ff666",
        "cancel",
        true,
        ScanMode.BARCODE,
      )!.listen((barcode) {});
    } catch (e) {
      print(e);
    }
  }
}