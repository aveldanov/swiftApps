//1.
//
//     10
//    /  \
//   5    14
//  /    /  \
// 1    11   20


// 2. data structure - Node

class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }

}

// left branch
let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

// right branch

let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let fourteenNode = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)

// root
let tenRootNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteenNode)





// 3  Implement search algo that searches through this ree for a searchValue


//     10
//    /  \
//   5    14
//  /    /  \
// 1    11   20


//func search(node: Node?, searchValue: Int) -> Bool {
//
//    if node == nil {
//        return false
//    }
//
//    if node?.value == searchValue{
//        return true
//    } else{
//        return search(node: node?.leftChild, searchValue: searchValue) || search(node: node?.rightChild, searchValue: searchValue)
//    }
//
//}


//     10
//    /  \
//   5    14
//  /    /  \
// 1    11   20
// IMPROVED VERSION when left branch lesser than root and right is bigger
func search(node: Node?, searchValue: Int) -> Bool {
    
    if node == nil {
        return false
    }
    
    if node?.value == searchValue{
        print("hit value")
        return true
    } else if searchValue < node!.value {
        print("left")
        return search(node: node?.leftChild, searchValue: searchValue)
    } else{
        print("right")
        return search(node: node?.rightChild, searchValue: searchValue)
        
    }

}



print(search(node: tenRootNode, searchValue: 0))

// 4 point of all this?

// answer - Efficency



