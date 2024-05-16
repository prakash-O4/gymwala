import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SharedTextField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final bool? isPassword;
  const SharedTextField(
      {super.key, required this.hintText, required this.icon, this.isPassword});

  @override
  State<SharedTextField> createState() => _SharedTextFieldState();
}

class _SharedTextFieldState extends State<SharedTextField> {
  bool showText = false;
  @override
  void initState() {
    super.initState();
    showText = widget.isPassword ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.poppins(fontSize: 16),
      obscureText: showText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        fillColor: const Color(0xFFF7F8F8),
        filled: true,
        prefixIcon: Icon(
          widget.icon,
          color: const Color(0xFFADA4A5),
        ),
        hintText: widget.hintText,
        hintStyle: GoogleFonts.poppins(
          color: const Color(0xFFADA4A5),
        ),
        suffixIcon: (widget.isPassword ?? false)
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showText = !showText;
                  });
                },
                icon: Icon(
                  showText ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
                  color: const Color(0xFFADA4A5),
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
