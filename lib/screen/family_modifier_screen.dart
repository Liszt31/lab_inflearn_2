import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lab_inflearn_2/layout/default_layout.dart';
import 'package:lab_inflearn_2/riverpod/family_modifier_provider.dart';

class FamilyModifierScreen extends ConsumerWidget {
  const FamilyModifierScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(familyModifierProvider(3));
    return DefaultLayout(
        title: 'FamilyModifierScreen',
        body: Center(
          child: state.when(
              data: (data) => Text(data.toString()),
              error: (error, stack) => Text(error.toString()),
              loading: () => CircularProgressIndicator()),
        ));
  }
}
