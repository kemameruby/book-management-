import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.board,
      required this.onTap,
      required this.isLoading,
      this.enabled = true,
      required String text});

  final String board;
  final Function() onTap;
  final bool isLoading;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !isLoading && enabled ? onTap : null,
      child: Container(
        height: 50,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              if (isLoading)
                const SizedBox(
                  child: CircularProgressIndicator(),
                ),
              if (!isLoading)
                Text(
                  board,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
