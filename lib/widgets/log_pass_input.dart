import 'package:flutter/material.dart';

import '../pallet.dart';

class PasswardInput extends StatelessWidget {
  const PasswardInput({
    super.key,
    required this.icon,
    required this.hint,
    this.inputAction = TextInputAction.next,
  });

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600]!.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: hint,
              hintStyle: Kbody,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            style: Kbody,
            textInputAction: inputAction),
      ),
    );
  }
}
