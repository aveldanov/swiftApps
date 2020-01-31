let numbers = [1,2,3,4,3,3]
let maps = [1,2,3,4]
let red = [1,2,3,4]
// Filter into [3,3,3], then filter into [2,4] (even number)


print(numbers.filter({$0%2 == 0}))



// transform [1,2,3,4] -> [2,4,6,8]


print(maps.map({$0*2}))



// sum [1,2,3,4] -> 10 using reduce

print(red.reduce(0, {sum,number in sum+number}))
