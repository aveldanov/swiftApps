//Example 1:
//
//Input: nums = [12,345,2,6,7896]
//Output: 2
//Explanation:
//12 contains 2 digits (even number of digits).
//345 contains 3 digits (odd number of digits).
//2 contains 1 digit (odd number of digits).
//6 contains 1 digit (odd number of digits).
//7896 contains 4 digits (even number of digits).
//Therefore only 12 and 7896 contain an even number of digits.
//Example 2:
//
//Input: nums = [555,901,482,1771]
//Output: 1
//Explanation:
//Only 1771 contains an even number of digits.
//
//
//Constraints:
//
//1 <= nums.length <= 500
//1 <= nums[i] <= 10^5









    func findNumbers(_ nums: [Int]) -> Int {
        
var count = 0
        var majorCount = 0
//     var n = 3454
        
        
        for var n in nums{
            
            count = 0
            while n > 0{
                n = n/10
                print("n", n)
                count += 1
                
            }
            if count % 2 == 0{
                print("count = ", count)
                majorCount+=1
            }
            
        }
        


        
        
        
        
return majorCount
}




print(findNumbers([437,315,3225,431,686,264,442]))
