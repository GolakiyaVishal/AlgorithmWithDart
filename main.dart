// with null safety

void main() {
  print(isValidSubsequence([5, 1, 22, 6, -1, 8, 10], [1, 6, -1, 10]));
}

/** Validate Subsequence*/
bool isValidSubsequence(List<int> array, List<int> sequence) {
  if (array.length <= 0) return false;

  if (sequence.length <= 0) return false;

  bool returnable = true;
  sequence.forEach((element) {
    if (!array.contains(element)) {
      returnable = false;
    }
  });
  return returnable;
}


void main() {
  var list = LinkedLIst();
  list.addLast(Node(10));
  list.addLast(Node(20));
  list.addLast(Node(30));
  list.addLast(Node(40));
//   list.reversList();
//   list.printList();
//   print(list.getKthNode(0));
//   list.getMiddleOfLIst();
  print(list.hasLoop());
}

class LinkedLIst {
  Node? first;
  Node? last;

  bool isEmpty() => first == null;

  void addFirst(Node node) {
    if (isEmpty()) {
      first = last = node;
      return;
    }

    node.setNext(first);
    first = node;
  }

  void addLast(Node node) {
    if (isEmpty()) {
      first = last = node;
      return;
    }

    last?.setNext(node);
    last = node;
  }

  // get revers list
  void reversList() {
    if (isEmpty()) return;

    Node? current = first;
    Node? next = first?.next;

    while (next != null) {
      Node? temp = next.next;
      next.setNext(current);
      current = next;
      next = temp;
      temp = temp?.next;
    }

    last = first;
    last?.setNext(null);
    first = current;
  }
  
  // get kth node from last in one pass
  int getKthNode(int k){
    if(isEmpty()) return -1;
    
    int currentPosition = 0;
    var target = first;
    var move = first;
    
    while(move != null){
      if(currentPosition > k-1)
        target = target?.next;
      
      currentPosition++;
      move = move.next;
    }
    
    if(currentPosition < k){
      return -1;
    }
    
    return target?.value?? -1;
  }
  
  // print middel of list
  void getMiddleOfLIst(){
    if(isEmpty()) return;
    
    var slow = first;
    var fast = first;
    
   while(fast != last && fast?.next != last){
     fast = fast?.next?.next;
     slow = slow?.next;
   }
    if(fast==last){
      print(slow?.value);
    } else {
      print("${slow?.value} , ${slow?.next?.value}");
    }
  }

  bool hasLoop(){
    if(isEmpty()) return false;
    
    if(first == last) return false;
    
    var slow = first;
    var fast = first;
    while(fast != null && fast.next != null){
      slow = slow?.next;
      fast = fast.next?.next;
      
      if(slow == fast){
        return true;
      }
    }
    return false;
  }
  
  void printList() {
    var temp = first;
    while (temp != null) {
      print(temp.value);
      temp = temp._next;
    }
  }
}

class Node {
  final int _value;
  Node? _next;

  Node(this._value);

  int get value => _value;
  Node? get next => _next;

  void setNext(Node? next) => _next = next;
}
