import 'package:flutter/material.dart';

///Полнеценный error handling решил не включать для тестогого, вообще могу если надо
showError(BuildContext context) {
  const snackBar = SnackBar(
    content: Text(
      'Something went wrong',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: Colors.grey,
  );
  WidgetsBinding.instance.addPostFrameCallback(
        (_) => ScaffoldMessenger.of(context)
        .showSnackBar(snackBar),
  );
}