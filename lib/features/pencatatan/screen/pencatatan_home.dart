import 'package:flutter/material.dart';

class PencatatanHome extends StatefulWidget {
  const PencatatanHome({super.key});

  @override
  State<PencatatanHome> createState() => _PencatatanHomeState();
}

class _PencatatanHomeState extends State<PencatatanHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Pencatatan Page'),
      ),
    );
  }
}