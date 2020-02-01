
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
