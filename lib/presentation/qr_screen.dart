import 'package:flutter/material.dart';
import 'package:qrcode/presentation/scan_qr.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 500,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Image(
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyYwscUPOH_qPPe8Hp0HAbFNMx-TxRFubpg&usqp=CAU",
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const QRViewExample(),
                  ),
                );
              },
              child: Text(
                "Scan QR Code",
                style: TextStyle(color: Colors.indigo[900]),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    ));
  }
}
