import 'package:flutter/material.dart';

import '../values/colors.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final Color labelColor;
  final bool isPassword;
  final bool disabled;
  final String? textValue;
  const CustomTextField({
    Key? key,
    required this.label,
    this.labelColor = const Color.fromARGB(255, 174, 174, 174),
    this.isPassword = false,
    this.disabled = false,
    this.textValue = "",
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextField();
}

class _CustomTextField extends State<CustomTextField> {
  bool _passwordVisible = false;

  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    if (widget.isPassword) {
      _passwordVisible = true;
    }
    _controller.text = widget.textValue!;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: !widget.disabled,
      controller: _controller,
      obscureText: _passwordVisible,
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: widget.isPassword
                ? Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: CustomColor.primaryColor,
                    size: 20,
                  )
                : const SizedBox(),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
          label: Text(
            widget.label,
            style: TextStyle(
              color: widget.labelColor,
              fontSize: 15,
            ),
          )),
    );
  }
}
