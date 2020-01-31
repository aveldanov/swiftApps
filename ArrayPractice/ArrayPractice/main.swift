




let tracks = ["a","b","c","d","e"]



func arrMan(input:[String],char:String)->[String]{
    
    
    var newArr:[String] = []
    var startIndex = input.firstIndex(of: char)
    

    for i in startIndex!...input.count-1{
        newArr.append(input[i])
        print(input[i])
    }
    
    for j in 0...startIndex!-1{
        newArr.append(input[j])

        print(input[j])
    }
    
    
    
    return newArr
    
    
}



print(arrMan(input: tracks,char: "d"))
