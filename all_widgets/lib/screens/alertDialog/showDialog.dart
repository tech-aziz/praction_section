import 'package:flutter/material.dart';
class ShowDialog extends StatefulWidget {
  const ShowDialog({super.key});

  @override
  State<ShowDialog> createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Save'),
      content: Text('Are you sure or not?'),
    );
  }
}