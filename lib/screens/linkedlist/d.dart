void main() {
  var list = LinkingList();
  list.insertData(10);
  list.showData();
  list.insertData(100);
  list.insertData(1000);
  list.insertData(10000);
  list.insertData(100000);
  list.insertData(1000000);
  list.insertData(10000000);
  list.insertData(100000000);
}

class NodeClass {
  int data;
  NodeClass next;
}

class LinkingList {
  NodeClass head;

  void insertData(int data) {
    var node = NodeClass();
    node.data = data;
    node.next = head;
    if (head == null) {
      head = node;
    } else {
      NodeClass currentPosition = head;
      while (currentPosition.next != null) {
        currentPosition.next = node;
      }
      print("One value is added to the list. ${node.data}");
    }
  }

  void insertend(int data) {
    var node = NodeClass();
    NodeClass ptr;
    NodeClass preptr;
    node.data = data;
    node.next = head;
    while (node.next != null) {
      ptr = ptr.next;
      preptr = ptr;
    }
  }

  void showData() {
    NodeClass node = head;
    if (head == null) {
      print("No value has been added in the list. It is empty.");
    } else {
      print("One value is added to the list: ${node.data}");
    }
  }
}
