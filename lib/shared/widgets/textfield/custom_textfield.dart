import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String? id;
  final String? label;
  final String? value;
  final String? hint;
  final TextStyle? hintStyle;
  final String? helper;
  final String? Function(String?)? validator;
  final bool obscure;
  final bool enabled;
  final bool border;
  final bool readOnly;
  final int? maxLength;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String) onChanged;
  final Function(String)? onSubmitted;
  final VoidCallback? onClick;

  const CustomTextField({
    Key? key,
    this.label,
    this.id,
    this.value,
    this.validator,
    this.hint,
    this.hintStyle,
    this.helper,
    this.maxLength,
    this.readOnly = false,
    this.border = true,
    required this.onChanged,
    this.onSubmitted,
    this.obscure = false,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.onClick,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController textEditingController = TextEditingController();
  bool showPassword = true;

  @override
  void initStatefalse() {
    textEditingController.text = widget.value ?? "";
    super.initState();
  }

  showOrHidePassword() {
    showPassword = !showPassword;
    setState(() {});
  }

  getValue() {
    return textEditingController.text;
  }

  setValue(value) {
    textEditingController.text = value;
  }

  resetValue() {
    textEditingController.text = "";
  }

  focus() {
    focusNode.requestFocus();
  }

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return widget.obscure == false
        ? TextFormField(
            enabled: widget.enabled,
            controller: textEditingController,
            focusNode: focusNode,
            validator: widget.validator,
            maxLength: widget.maxLength,
            obscureText: widget.obscure,
            readOnly: widget.readOnly,
            onTap: widget.onClick,
            decoration: InputDecoration(
              alignLabelWithHint: false,
              enabled: false,
              fillColor: Colors.grey.shade200,
              labelText: widget.label,
              border: widget.border
                  ? OutlineInputBorder(
                      // Tambahkan border di sini
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    )
                  : InputBorder.none,
              hintStyle: widget.hintStyle ??
                  const TextStyle(
                    fontSize: 15.0,
                  ),
              enabledBorder: widget.border
                  ? OutlineInputBorder(
                      // Tambahkan border di sini
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    )
                  : InputBorder.none,
              errorBorder: OutlineInputBorder(
                // Tambahkan border di sini
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.red, width: 1.5),
              ),
              errorStyle: const TextStyle(
                color: Colors.red,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
              labelStyle: const TextStyle(
                fontSize: 13.0,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 10.0),
                child: Icon(widget.prefixIcon),
              ),
              suffixIcon: Icon(
                widget.suffixIcon,
              ),
              helperText: widget.helper,
              hintText: widget.hint,
            ),
            onChanged: (value) {
              widget.onChanged(value);
            },
            onFieldSubmitted: (value) {
              if (widget.onSubmitted != null) widget.onSubmitted!(value);
            },
          )
        : TextFormField(
            enabled: widget.enabled,
            controller: textEditingController,
            focusNode: focusNode,
            validator: widget.validator,
            maxLength: widget.maxLength,
            obscureText: showPassword ? true : false,
            decoration: InputDecoration(
              alignLabelWithHint: false,
              enabled: false,
              fillColor: Colors.grey.shade200,
              labelText: widget.label,
              border: OutlineInputBorder(
                // Tambahkan border di sini
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              hintStyle: const TextStyle(
                fontSize: 15.0,
              ),
              enabledBorder: OutlineInputBorder(
                // Tambahkan border di sini
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              errorBorder: OutlineInputBorder(
                // Tambahkan border di sini
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.red, width: 1.5),
              ),
              errorStyle: const TextStyle(
                color: Colors.red,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
              labelStyle: const TextStyle(
                fontSize: 13.0,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 20, left: 10),
                child: Icon(widget.prefixIcon),
              ),
              suffixIcon: InkWell(
                onTap: () => showOrHidePassword(),
                child: Icon(
                  showPassword == false
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
              helperText: widget.helper,
              hintText: widget.hint,
            ),
            onChanged: (value) {
              widget.onChanged(value);
            },
            onFieldSubmitted: (value) {
              if (widget.onSubmitted != null) widget.onSubmitted!(value);
            },
          );
  }
}

class ChatInputField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onSubmitted;

  const ChatInputField({
    Key? key,
    required this.controller,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  _ChatInputFieldState createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            maxLines: null,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: 'Type a message...',
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(30.0),
              // ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
            onFieldSubmitted: (value) {
              widget.onSubmitted(value);
              widget.controller.clear();
            },
          ),
        ),
        SizedBox(width: 8.0),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            final message = widget.controller.text.trim();
            if (message.isNotEmpty) {
              widget.onSubmitted(message);
              widget.controller.clear();
            }
          },
        ),
      ],
    );
  }
}
