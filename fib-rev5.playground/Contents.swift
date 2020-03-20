import UIKit

//[0,1,1,2,3,5,8,13,21...]

    func fibonacci(n: Int) {
        var arr:[Int] = [0,1]
        
        if n == 0{
            print([0])
        }
        else if n == 1{
            print([0,1])
        }else{
            for item in 1...n-2{
                arr.append(arr.last! + arr[arr.count-2])
            }
            
            
        }
        
        print(arr)
    }
    
    fibonacci(n: 10)


