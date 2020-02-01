



// examples
// 5 + 25 * 6

// Represents the equation
//        '+'
//       /   \
//     '*'    5
//    /   \
//   25    6


class Node {
    var operation: String?  // "+", "*", etc
    var value: Float?
    var leftChild: Node?
    var rightChild: Node?
    
    init(operation: String?, value: Float?, leftChild: Node?, rightChild: Node?){
        self.operation = operation
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
        
    }
    
}


//          '+'
  //       /   \
  //     '*'    5
  //    /   \
  //   25    6
  
  
  // left branch
  
  let twentyFiveNode = Node(operation: nil, value: 25, leftChild: nil, rightChild: nil)
  let sixNode = Node(operation: nil, value: 6, leftChild: nil, rightChild: nil)
  let multiplyNode = Node(operation: "*", value: nil, leftChild:twentyFiveNode,  rightChild: sixNode)

  
  // right branch
  
  let fiveNode = Node(operation: nil, value: 5, leftChild: nil, rightChild: nil)
  
  
  // root

  let plusRootNode = Node(operation: "+", value: nil, leftChild: multiplyNode, rightChild: fiveNode)


// 6 + 5

//   +
//  +  5
//25  6
// Implement algo

func evaluate(node: Node) -> Float {
    if node.value != nil{
        return node.value!
    }
    
    if node.operation == "+"{
        // apply recursion
        return evaluate(node: node.leftChild!) + evaluate(node: node.rightChild!)
    }
    
    if node.operation == "*"{
         // apply recursion
         return evaluate(node: node.leftChild!) * evaluate(node: node.rightChild!)
     }
  
    
    return 0
    
    
}


print(evaluate(node: plusRootNode))

