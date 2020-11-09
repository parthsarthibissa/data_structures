import 'package:data_structures/components/compbase.dart';
import 'package:flutter/material.dart';

class QueueComp extends StatelessWidget {
  const QueueComp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseComp(
      title: 'Queue',
      application: ' -> Used in Task Scheduling in OS.\n\n -> Used in BFS Traversal of Graphs.\n\n -> Used in  printer scheduling.\n\n -> Used in To-Do List Applications\n\n',
      complex : 'Complexity : \n\n Enqueue -> O(N)\n Dequeue -> O(N)'
    );
  }
}