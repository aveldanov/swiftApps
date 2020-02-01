
// What is a linked list


// 1 -> 2 -> 3 -> nil


// Define data structure that supports the list

class Node {
    let value:Int
    var next: Node?
    
    init(value:Int, next:Node?) {
        self.value = value
        self.next = next
    }
}

let threeNode = Node(value: 3, next: nil)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode )

// Print list
func printList(head:Node?){
    print("Print out list of nodes")
    var currentNode = head
    while currentNode != nil {
        print(currentNode!.value)
        currentNode = currentNode!.next
    }

}
//
//
//printList(head: oneNode)
//
//head - >
// 1 -> 2 -> 3 -> nil
// nil <- 1 _ 2 -> 3 -> nil
// nil <- 1 <- 2 _ 3 -> nil
// nil <- 1 <- 2 <- 3
// return prevNode =
// 3 -> 2 -> 1 -> nil


// flipping list
// nil <- 1 <- 2 <- 3

func reverseList(head: Node?) -> Node?{
    var currentNode = head
    var prevNode: Node? //nil
    var nextNode: Node?
    
    
    while currentNode != nil{
        print("---------------------------")

        print("prevNode", prevNode?.value)
        print("currentNode",currentNode?.value)
        print("nextNode", nextNode?.value)
        print("")
        
        // save next
        nextNode = currentNode?.next //next 1 -> 2 nextNode -> 2 // nextNode -> 3 // nextNode -> nil
        
        //Reverese
        currentNode?.next = prevNode  // 1 -> nil // nil - > 1 // -> 2
        
        // Advance
        prevNode = currentNode        // prevNode = 1  // prevNode = 2 // prevNode = 3
        currentNode = nextNode       // currentNode = 2 // curentNode = 3 // nil
        // 1->2
        print("prevNodeAfter", prevNode?.value)
        print("currentNodeAfter",currentNode?.value)
        print("nextNodeAfter", nextNode?.value)

        print("")

    }
    
    
    return  prevNode
}

let myReversedList = reverseList(head: oneNode)

printList(head: myReversedList)// needs to print our 3,2,1
