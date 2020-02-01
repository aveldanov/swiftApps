

import Foundation




let sentence = "I do not know how to be there yo that is life yo be anna abba abba be"



func allPalindrom(str:String) -> [String:Int]{
//    print(str)
    
    let words = str.components(separatedBy: " ")
    
    var dict = [String:Int]()
    
    
    words.forEach { (word) in
//        print(Array(word))
        if isPalindrom(word: word){
            print("Pal found: ", word)
            
            if dict[word] == nil{
                dict[word] = 1
            }else{
                dict[word]! += 1
            }
        }
    }
    
    
    
    
    print(dict)
    return dict
}


fileprivate func isPalindrom(word:String) -> Bool{
//    print("Palind found \(word)")
    let chars = Array(word)
    var currentIndex = 0
    
    while currentIndex < chars.count/2  {
        if chars[currentIndex] != chars[chars.count - currentIndex - 1]{
            
            return false
        }
        
        currentIndex += 1
    }
    return true
}




allPalindrom(str: sentence)








//
//
//func palindromCount(str:String)->[String:Int]{
//    var dict = [String:Int]()
//    var arr = [String]()
//    var max = 0
//    var char = ""
//
//    arr = str.components(separatedBy: " ")
//    print(arr)
//    for i in arr {
//
//        print(i)
//        if dict[i] == nil{
//            dict[i] = 1
//        }else{
//            dict[i]! += 1
//        }
//    }
//
//    for key in dict.keys{
//
//        if max < dict[key]!{
//            max = dict[key]!
//            char = key
//        }
//
//
//
//    }
//
//    print("MAX char: ", char)
//    return dict
//
//}
//
//
//print(palindromCount(str: sentence))


//let string = "1;2;3"
//let array = string.components(separatedBy: ";")
//print(array) // returns ["1", "2", "3"]
