import 'package:flutter/material.dart';
import 'package:jin_app/providers/model/auth.model.dart';
import 'package:jin_app/providers/model/profile.model.dart';
import 'package:provider/provider.dart';

class CombineProvider extends StatefulWidget {
  final Widget child;
  const CombineProvider({super.key, required this.child});

  @override
  State<CombineProvider> createState() => _CombineProviderState();
}

class _CombineProviderState extends State<CombineProvider> {
  ValueNotifier<AuthProviderModel> authProviderModel =
      ValueNotifier(AuthProviderModel());

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProviderModel()),
        ChangeNotifierProvider(create: (_) => ProfileModel())
      ],
      child: widget.child,
    );
  }
}
