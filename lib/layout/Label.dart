import 'package:flutter/widgets.dart';

class Label extends StatelessWidget {
  final String label;
  final dynamic value;
  const Label({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Text(
                '$label: ',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text('$value')
          ],
        )
      ],
    );
  }
}
