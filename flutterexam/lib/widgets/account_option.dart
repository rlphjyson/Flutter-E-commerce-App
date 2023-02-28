import 'package:flutter/material.dart';

class AccountOption extends StatefulWidget {
  final IconData icon;
  final String label;
  final VoidCallback onClick;
  const AccountOption(
      {Key? key,
      required this.icon,
      required this.label,
      required this.onClick})
      : super(key: key);

  @override
  State<AccountOption> createState() => _AccountOptionState();
}

class _AccountOptionState extends State<AccountOption> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap:
            widget.onClick, // Navigator.pushNamed(context, '/changePassword'),
        child: SizedBox(
          child: Row(
            children: [
              Icon(
                widget.icon,
                size: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.label,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 217, 217),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
