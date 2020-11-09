import 'package:data_structures/components/compbase.dart';
import 'package:flutter/material.dart';

class StackComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseComp(
      title: 'Stack',
      application: '- > Balancing of symbols.\n\n - > Infix to Postfix/Prefix conversion\n\n - > Redo-undo features in many apps.\n\n - > Forward and backward in browsers\n\n - > Used in Tree and Graph Traversals.\n',
      complex: 'Complexity in Stack :\n\n Push -> O(1) \n Pop -> O(1)',
    );
  }
}